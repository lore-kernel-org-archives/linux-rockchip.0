From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH 2/7] dt-bindings: PCI: cadence: Add binding to specify max
 virtual functions
Date: Thu, 16 Jan 2020 16:59:20 +0530
Message-ID: <f0690395-4ce7-df93-e837-670829aafb03@ti.com>
References: <20191231113534.30405-1-kishon@ti.com>
 <20191231113534.30405-3-kishon@ti.com> <20200115014026.GA10726@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200115014026.GA10726@bogus>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Jonathan Corbet <corbet-T1hC0tSOHrs@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-doc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

On 15/01/20 7:10 AM, Rob Herring wrote:
> On Tue, Dec 31, 2019 at 05:05:29PM +0530, Kishon Vijay Abraham I wrote:
>> Add binding to specify maximum number of virtual functions that can be
>> associated with each physical function.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
>> ---
>>  .../devicetree/bindings/pci/cdns,cdns-pcie-ep.txt         | 2 ++
>>  .../devicetree/bindings/pci/ti,j721e-pci-ep.yaml          | 8 ++++++++
>>  2 files changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
>> index 4a0475e2ba7e..432578202733 100644
>> --- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
>> +++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
>> @@ -9,6 +9,8 @@ Required properties:
>>  
>>  Optional properties:
>>  - max-functions: Maximum number of functions that can be configured (default 1).
>> +- max-virtual-functions: Maximum number of virtual functions that can be
>> +    associated with each physical function.
>>  - phys: From PHY bindings: List of Generic PHY phandles. One per lane if more
>>    than one in the list.  If only one PHY listed it must manage all lanes. 
>>  - phy-names:  List of names to identify the PHY.
>> diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
>> index 4621c62016c7..1d4964ba494f 100644
>> --- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
>> +++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
>> @@ -61,6 +61,12 @@ properties:
>>      minimum: 1
>>      maximum: 6
>>  
>> +  max-virtual-functions:
>> +    minItems: 1
>> +    maxItems: 6
> 
> Is there a PCIe spec limit to number of virtual functions per phy 
> function? Or 2^32 virtual functions is okay.

The PCIe spec provides a 16 bit field to specify number of virtual
functions in the SR-IOV extended capability.


> 
>> +    description: As defined in
>> +                 Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> 
> I suspect this this be a common property.

Right now we don't have common EP property binding across all
controllers. Maybe should create one?

Thanks
Kishon
