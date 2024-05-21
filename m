Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C785C25B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNImmoMN2V2dwOPAPtuA1AbxLXhFe28vBcazRqkfCV8=; b=e2DTqvZmAd7i6R
	0XpXjjkGr1CfdUjC5mR+yrOinsrGbYdilcnFjIsw/P+gbU02SZAEVKj787IF+YLAiaxrh03TxjG6E
	ya3FjrCuH7UPZUmzBG8SxJxiaQM/6Khex18SH3+936C14sOBvTbCseA8F7s40yAftUlb6cEDQReKr
	m/w8mSKpZaavCbHmHXYGc6KE3ZsZjuGU47D9Kv2F3I0eTCqxktzo35O3vdriKWS0joHrBhrCp5AvH
	qS+eFv1qWoqEQqI9gfH06lT0IdlqMHOtY0pW948BimBdF8S87GGIBjsuDVbs5f2XzGlveq1rjYHNT
	TdyTpx568MRsRijkZX1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WlM-000000016QG-01U4;
	Tue, 21 May 2024 21:11:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wl8-000000016Et-1Ohp
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:11:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325841; bh=PGvuLTeSZXbOGOX7STN02fCIGy5L2QPSCNlAObw3PHo=;
 b=gPPx+Q8FHyG7eJHxSzssdQ033h6mewfr56kY2lKemL3ERR87t43/CTEcQ3q9W92yj2fYMntmV
 fFVI9lh9uSRW+13Hzl0sOwK5ThnNBcW5SM0Ha6uWifdDTw5y2TTGctRGsB2TAVsXEE84LX+dABS
 i/3WBC4kt0JWLXCPsQ2i2eTmByR0OInXjRI885C1il/WznrYJpGUmCV1EZI3bgxwQkgg7/v2/Vh
 BYN2VIKJCri0xaqt36jT+GCLgMkf6iq2Cqu5o4lmIuouAVoa5S9mc6CZodJGVUdeJrdnn/8iS+d
 9V0DP2teDhKPUr5UrwviWJEHbBhg4cNvkvrDtkLtC9BA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, Tobias
 Schramm <t.schramm@manjaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, netdev@vger.kernel.org
Subject: [PATCH 01/13] dt-bindings: net: rockchip-dwmac: Fix rockchip,rk3308-gmac compatible
Date: Tue, 21 May 2024 21:10:04 +0000
Message-ID: <20240521211029.1236094-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0dcf8b6b0c828344aea6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141058_446596_D9780046 
X-CRM114-Status: UNSURE (   7.73  )
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

Schema validation using rockchip,rk3308-gmac compatible fails with:

  ethernet@ff4e0000: compatible: ['rockchip,rk3308-gmac'] does not contain items matching the given schema
        from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
  ethernet@ff4e0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'phy-mode',
                     'reg', 'reset-names', 'resets', 'snps,reset-active-low', 'snps,reset-delays-us',
                     'snps,reset-gpio' were unexpected)
        from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#

Add rockchip,rk3308-gmac to snps,dwmac.yaml to fix DT schema validation.

Fixes: 2cc8c910f515 ("dt-bindings: net: rockchip-dwmac: add rk3308 gmac compatible")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 21cc27e75f50..3bab4e1f3fbf 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -76,6 +76,7 @@ properties:
         - rockchip,rk3128-gmac
         - rockchip,rk3228-gmac
         - rockchip,rk3288-gmac
+        - rockchip,rk3308-gmac
         - rockchip,rk3328-gmac
         - rockchip,rk3366-gmac
         - rockchip,rk3368-gmac
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
