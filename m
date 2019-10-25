From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/7] dt-bindings: sram: Convert SRAM bindings to
 json-schema
Date: Fri, 25 Oct 2019 12:05:28 -0500
Message-ID: <20191025170527.GA12121@bogus>
References: <20191021161351.20789-1-krzk@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 21 Oct 2019 18:13:45 +0200, Krzysztof Kozlowski wrote:
> Convert generic mmio-sram bindings to DT schema format using
> json-schema.  Require the address/size cells to be 1, not equal to root
> node.  This also fixes the check for clocks property to be in main root
> node instead of children.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v3:
> 1. Integrate Samsung SRAM bindings here,
> 2. Move 'clocks' one level up (error in previous bindings),
> 3. Add 'additionalProperties: false',
> 4. Fix names of children in examples,
> 5. Fix children nodes address pattern,
> 6. Address other review comments
> 
> Changes since v2:
> 1. Add Rob as maintainer,
> 2. Use "contains" for compatible,
> 3. Fix address and size cells to 1,
> 4. Add maxitems to reg under children,
> 5. Remove unneeded string type from label.
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable).
> ---
>  .../devicetree/bindings/sram/sram.txt         |  80 ----------
>  .../devicetree/bindings/sram/sram.yaml        | 137 ++++++++++++++++++
>  2 files changed, 137 insertions(+), 80 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/sram.txt
>  create mode 100644 Documentation/devicetree/bindings/sram/sram.yaml
> 

Applied the series, thanks.

Rob
