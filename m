Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 751B9CA0EC1
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 23:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twKo2Y16wuIlsWzf3t6z4HrS/X6mOlFjtQrwgsaOwbY=; b=deEK6ABy+5ItFW
	97VQVaQE21Te0F5kqcMsdUZP2s8eLphnHopn3wI/aNkSslQxLfWevjXXldqy2lpEtqhyay7pxq6G5
	b4a3BlPidlGzOzCD16O+duLRI1e7z3Znkabo6IGrzbH/Dk6IWPzNBjL+Vu7/UqIQngvYZO9TuOGFU
	GJsqefCikHN/quAod7av+5wcHtLCR2h9yUwig4ZL54mJfiYTrtZFVpzUy7NSI2VnhWOeanWVtYzDo
	XyxIcKf2P1qYT8vxwX2ChEWo9YiJBV3jRP+496aiS8DgJYQ23r1fU+NIrA7aoDtD9s8A+ZeifMK45
	xVVBP21HLop3lT3gqudQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF1U-000000069nA-0c7G;
	Sun, 10 Aug 2025 23:00:16 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulDsp-000000064Je-2til
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 21:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1754862433; bh=dhuwCZmH8EoRCECnmC3TQDpoh6EUZFY4ECh5j02bOWc=;
 b=ddqjB8wWGYHN1H5jdkI2WGW/+7ab1F8D4Neo+nnMR6GRPU5rGeS+vO+vWni0zaT46J7e+ptHe
 NkZbncpuwxneuRywtKL6Dnr6vAE8YMLtZQDpkASiN4+qximwjuwayXxPy3e8buqmzDyaU7/E0NN
 xu0NAaOlv9PDuReRkNs6up6z9mx2dB+9uK4n2HzKj4AyhixDpCIe0v8yD1ANaKNEzbaKa1w6LaB
 OiXbkIG7Te2Xs2Ep5fA2MMsJvaN5TyoZAYhafQMas/depE/9TbveqVRrX8o8f0TBem59mlC1bnW
 W1PEZs1Y0v77EwX08jvvXSxLnehdyah4hbQ3Tf7o67nQ==
X-Forward-Email-ID: 68990e70797ab89627792477
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 6/7] media: dt-bindings: rockchip,vdec: Add RK3288 compatible
Date: Sun, 10 Aug 2025 21:24:36 +0000
Message-ID: <20250810212454.3237486-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250810212454.3237486-1-jonas@kwiboo.se>
References: <20250810212454.3237486-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_144715_768540_7DC4A016 
X-CRM114-Status: UNSURE (   7.77  )
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

Add a RK3288 compatible for a version of the Rockchip VDEC IP that only
support HEVC decoding.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v2:
- Collect a-b tag
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 96b6c8938768..809fda45b3bd 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -16,6 +16,7 @@ description: |-
 properties:
   compatible:
     oneOf:
+      - const: rockchip,rk3288-vdec
       - const: rockchip,rk3399-vdec
       - const: rockchip,rk3576-vdec
       - const: rockchip,rk3588-vdec
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
