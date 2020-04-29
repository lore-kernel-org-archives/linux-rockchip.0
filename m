From: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v5 1/7] dt-bindings: mtd: Describe Rockchip RK3xxx NAND
 flash controller
Date: Wed, 29 Apr 2020 11:13:14 +0200
Message-ID: <20200429111314.5f15d72b@xps13>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
        <20200426100250.14678-2-yifeng.zhao@rock-chips.com>
        <4a83e5d2-90cc-1db7-cdfd-47b7ceb4fcef@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4a83e5d2-90cc-1db7-cdfd-47b7ceb4fcef-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote on Wed, 29 Apr 2020 10:53:30
+0200:

> Hi Yifeng,
> 
> > On Sun, Apr 26, 2020 at 06:02:44PM +0800, Yifeng Zhao wrote:  
> >> Documentation support for Rockchip RK3xxx NAND flash controllers
> >> 
> >> Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >> ---
> >> 
> >> Changes in v5:
> >> - Fix some wrong define
> >> - Add boot-medium define
> >> - Remove some compatible define
> >> 
> >> Changes in v4:
> >> - The compatible define with rkxx_nfc
> >> - Add assigned-clocks
> >> - Fix some wrong define
> >> 
> >> Changes in v3:
> >> - Change the title for the dt-bindings
> >> 
> >> Changes in v2: None
> >> 
> >>  .../mtd/rockchip,nand-controller.yaml         | 124 ++++++++++++++++++
> >>  1 file changed, 124 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> >> 
> >> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml  
> 
> The name of this file is based on Miquel's opinion, but the
> compatibility strings, (for which robh has given a 'reviewed by' tag) in
> version 4 don't fit with this format.

What do you mean? Is the file name restricted somehow? I just don't
want a compatible with just "nand" in it because this word is too vague
as it defines: a bus, a spec, a chip, people are also confusing it with
the controller and sometimes with the ECC engine too. "nfc" is okay
though.

Thanks,
Miquèl
