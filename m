Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78FB5CDB46B
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jun 2026 10:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0i+g1laPqOEbBjbA3luW2j478U1ATIDcR19FnLDo5nI=; b=CATAXoWutGfgTC
	vYoWpKT3XLBvhSD51Njp/6nn3EstPY8RORezsDvjzU0OwXMu9XLYBGJ1XfWSRus9H8xSCd9VjobGe
	S+D8hSzYIi/mARCBahdyQ4E24I759KU/a/JSJvAVBr7P6mVNyjRj/8J9oqvTZln/pNKtiPaD7zzQX
	hWsBFiVOxNYfrdKrm+PNCTuloq+TnMRvlFi5o46Hf53ggs+D/hL1HJ1ls3OqJx5aQZikEXSo4Y3N9
	LUxhUFlFHwk998484NNqw8PkyhKiXFyjjX6yf84p9TYEiUYz+A/eruht2FTFPjvfx2pmvLzN6hhr/
	tVfZ2HuTG8It4JbY/RXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbbsI-00000004phI-1TYP;
	Mon, 22 Jun 2026 10:27:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbbsG-00000004ph0-2tnk
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jun 2026 10:27:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C6B8E6001A;
	Mon, 22 Jun 2026 10:27:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5A21F000E9;
	Mon, 22 Jun 2026 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782124047;
	bh=/lE1FezMr7OwuD4X6kCWi5XoM/mNVm/48z+H+d2y2to=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=YBe0CXiNhKuJm10mmhpWlGEPbvFb/SAl8WRzZ311wIGiWCll3ncDpvDBYNNbuJk/w
	 IEjU9LtdRlVtKLKeBf7JTg3psmbg8WDMiCzuajDvQ6HOGNFPjNe7YWz8hGJlLzv/GX
	 8JK+If4RgsA0zJ7RkWDvo1Cto7LjW0qe3QMXAFSZpRqYoI7Xw02zE7oGThqH7EvfQy
	 mCaDxoQ0EhABfrOt9MIYvk4pPqeTT0VdoLWGRnp+0rjSHi8NR6V9er3ER4Y7S7kI6n
	 FKUZzCP5u2wxYNStPDLuJSoR5TQm/sNa4p+KoincOEU0pAyVCztGXvf16CwcJncfOX
	 3L2Apk/OfQAVg==
Date: Mon, 22 Jun 2026 11:27:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "andy@kernel.org" <andy@kernel.org>,
 "nuno.sa@analog.com" <nuno.sa@analog.com>, "dlechner@baylibre.com"
 <dlechner@baylibre.com>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "heiko@sntech.de" <heiko@sntech.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "andriy.shevchenko@intel.com" <andriy.shevchenko@intel.com>, Chris Morgan
 <macromorgan@hotmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V13 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <20260622112717.4548dc95@jic23-huawei>
In-Reply-To: <BE1P281MB1426C557A66945951D382EDDCEEF2@BE1P281MB1426.DEUP281.PROD.OUTLOOK.COM>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
	<20260615172554.160910-3-macroalpha82@gmail.com>
	<20260621181804.27b44942@jic23-huawei>
	<BE1P281MB1426C557A66945951D382EDDCEEF2@BE1P281MB1426.DEUP281.PROD.OUTLOOK.COM>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 22 Jun 2026 09:23:28 +0000
Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com> wrote:

> Hello Chris and Jonathan,
> 
> concerning dt bindings, my initial understanding was that we had a file per
> driver. But here, Chris is doing a new driver for icm42607 while adding new
> bindings here.
> 
> Does it means we don't have 1 binding file per driver, and there is no need
> to create a new binding file for inv_icm42607 driver?

Yes.  We often combine bindings when there is a lot of duplication and
only a few device specific rules are needed to describe the new parts.

Jonathan

> 
> Despite the naming, icm42607 chips are a complete new design very different
> than all other icm42600 chips. It using similar IPs for things like the FIFO,
> but all other parts are different. Especially, it doesn't use banks for
> registers access but indirect access delegated to the chip internals for
> accessing certain registers.
> 
> Thanks,
> JB
> 
> >From: Chris Morgan <macromorgan@hotmail.com>
> >
> >Add the ICM42607 and ICM42607P inertial measurement unit.
> >
> >This device is functionally very similar to the icm42600 series with a
> >very different register layout. The driver does not require an
> >interrupt for these specific chip revisions.
> >
> >Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> >Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> >---
> > .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
> > 1 file changed, 17 insertions(+), 1 deletion(-)
> >
> >diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> >index 9b2af104f186..81b6e85decd5 100644
> >--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> >+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> >@@ -30,6 +30,8 @@ properties:
> >       - invensense,icm42600
> >       - invensense,icm42602
> >       - invensense,icm42605
> >+      - invensense,icm42607
> >+      - invensense,icm42607p
> >       - invensense,icm42622
> >       - invensense,icm42631
> >       - invensense,icm42686
> >@@ -67,10 +69,24 @@ properties:
> > required:
> >   - compatible
> >   - reg
> >-  - interrupts
> > 
> > allOf:
> >   - $ref: /schemas/spi/spi-peripheral-props.yaml#
> >+  - if:
> >+      properties:
> >+        compatible:
> >+          contains:
> >+            enum:
> >+              - invensense,icm42600
> >+              - invensense,icm42602
> >+              - invensense,icm42605
> >+              - invensense,icm42622
> >+              - invensense,icm42631
> >+              - invensense,icm42686
> >+              - invensense,icm42688
> >+    then:
> >+      required:
> >+        - interrupts
> > 
> > unevaluatedProperties: false
> > 
> >-- 
> >2.43.  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
