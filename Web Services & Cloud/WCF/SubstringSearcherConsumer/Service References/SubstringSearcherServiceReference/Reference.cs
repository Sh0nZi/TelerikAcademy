﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18408
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SubstringSearcherConsumer.SubstringSearcherServiceReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SubstringSearcherServiceReference.ISubstringSearcher")]
    public interface ISubstringSearcher {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISubstringSearcher/GetSubstringCount", ReplyAction="http://tempuri.org/ISubstringSearcher/GetSubstringCountResponse")]
        int GetSubstringCount(string substringPattern, string text);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISubstringSearcher/GetSubstringCount", ReplyAction="http://tempuri.org/ISubstringSearcher/GetSubstringCountResponse")]
        System.Threading.Tasks.Task<int> GetSubstringCountAsync(string substringPattern, string text);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ISubstringSearcherChannel : SubstringSearcherConsumer.SubstringSearcherServiceReference.ISubstringSearcher, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SubstringSearcherClient : System.ServiceModel.ClientBase<SubstringSearcherConsumer.SubstringSearcherServiceReference.ISubstringSearcher>, SubstringSearcherConsumer.SubstringSearcherServiceReference.ISubstringSearcher {
        
        public SubstringSearcherClient() {
        }
        
        public SubstringSearcherClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public SubstringSearcherClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SubstringSearcherClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SubstringSearcherClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int GetSubstringCount(string substringPattern, string text) {
            return base.Channel.GetSubstringCount(substringPattern, text);
        }
        
        public System.Threading.Tasks.Task<int> GetSubstringCountAsync(string substringPattern, string text) {
            return base.Channel.GetSubstringCountAsync(substringPattern, text);
        }
    }
}
