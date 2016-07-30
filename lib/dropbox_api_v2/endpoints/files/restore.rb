module DropboxApiV2::Endpoints::Files
  class Restore < DropboxApiV2::Endpoints::Rpc
    Method      = :post
    Path        = "/2/files/restore".freeze
    ResultType  = DropboxApiV2::Metadata::File
    ErrorType   = DropboxApiV2::Errors::RestoreError

    # @method restore(path, rev)
    # Restore a file to a specific revision
    #
    # @param path [String] The path to the file you want to restore.
    # @param rev [String] The revision to restore for the file.
    add_endpoint :restore do |path, rev|
      perform_request({
        :path => path,
        :rev => rev
      })
    end
  end
end
