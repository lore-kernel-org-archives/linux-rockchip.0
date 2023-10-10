Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319DCCD8CB0
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 17:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e+/Oznz62ddnXxmpnk2rYcU5fp5fH9QnPe7n7VZxoo=; b=YyQSD6t+Txw2Pg
	Fni+K1HiwpogTDboL54NGpuwMAY6nIch3ngVPkXx4cRn7rPoac0kmcbCPdEgs32oZPxvXjEV4/VTQ
	1CtU+0PGCiFdXPPr5Tk7PeRNTqz6/GoJqe6Kaw9B/ElfBg9p93EPgIkjvp4Ex9c6sEpdz02FeBemS
	LTrUxYIYDceF7vtjAdXgeLhx+ej7RQZi89XqXPBU7evnpqg6nSEFC9J0Ak4cwWmYzwNVV4BcXORVp
	FALHvTz5C3f+XfBCwB6NdvOyx2OFZeE3h1cIwJQImJRtGYYvrFiCZdHVA7wgn71DIfHzjkArBtk+e
	7MGhIdv41Y0tTSzs6k7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqGkG-00Dsnf-2F;
	Tue, 10 Oct 2023 17:42:12 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqGjy-00DscN-29;
	Tue, 10 Oct 2023 17:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696959704; bh=yPDh6hJLq22uDFOey2IIVHRlfj1c4mTbnIg8EjMCl5U=;
	h=From:To:Cc:Subject:Date:References:From;
	b=NoYx7XNEpgN6QUeonOy3qhj5yXlQQHqEaGxe7LZCkqHEdtRUfGoiAEGUEzGZHkbZK
	 yq+OXssDFoudzx4rQiyGqK9EFrzrh3j+a+4IKdtaWe3dlRLYutCws6U14jR7drKiN2
	 xoambTdMj9QNGVsHudJ3ASdVvwQFqKKmc+1VBXmw=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: mfd: rk806: Allow system-power-controller property
Date: Tue, 10 Oct 2023 19:41:17 +0200
Message-ID: <20231010174138.1888396-3-megi@xff.cz>
In-Reply-To: <20231010174138.1888396-1-megi@xff.cz>
References: <20231010174138.1888396-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_104154_937953_38B56CE7 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
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

From: Ondrej Jirman <megi@xff.cz>

Declare support for this property.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
index cf2500f2e9a0..3c2b06629b75 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
@@ -29,6 +29,8 @@ properties:
   '#gpio-cells':
     const: 2
 
+  system-power-controller: true
+
   vcc1-supply:
     description:
       The input supply for dcdc-reg1.
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
