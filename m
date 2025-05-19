Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95746C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gEFH1J8P49tQevlfWdurO25hxc2tDC3+KncjYV0Wk0=; b=kvCago3cBMCQbu
	tzipy3u5i6NvduOyzQSyFlq6ojZzPpoD0p4FCZOVRQDK1vF9PlhpTIYPLy4EOxP0gqHkSWPFj8kVu
	EmW2KEcJBweGbZiciF8jZgX713iKLwtD+lVHswF/Ju+BuPgCMmDJ9b12v26ambKaJlDhwJPe6ZHCF
	9Zl4/zQ+Mub7E4C7cKNhz61v1p6Lh9ZP3xhfR0f2vOUyObpaD5xz4E/BLXft3q/QijxLCD59ry9TP
	NsKVcBiL9e6gzs9zo/Z0o5kFcTS5QY23plxqHtb75uBE+yfo0+s6qIeCqkJ3dctNZ4Azev0Lv8GXE
	0jMVQ5Z7o9c13EL9mfcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwIh-00000008Rjd-2mLs;
	Mon, 19 May 2025 08:56:47 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwIe-00000008Rb8-02ed
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 08:56:46 +0000
X-QQ-mid: esmtpsz19t1747644985t3448e8f9
X-QQ-Originating-IP: KewNoiMQncWF6172/GixGn+r8xA+9YghBeeHMdJoq/U=
Received: from localhost.localdomain ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 16:56:23 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1955181229310767366
EX-QQ-RecipientCnt: 17
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Sakura Pi RK3308B
Date: Mon, 19 May 2025 16:56:13 +0800
Message-Id: <20250519085614.2245892-3-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519085614.2245892-1-i@chainsx.cn>
References: <20250519085614.2245892-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NKv2G1wnhDBn+Dox2tI6ftS3Hlw0lkqqK/EMoRG3orfNt2M2yRO4k1m7
	540F0ljzSOxetHlbnmKrzMNmsrpbmWk4sSyf5U7Lpauv71Q6vc69tbidpxIdVSyv/ZWJ2wf
	KqKM6RpMMenmv0urtyc11OgNbcyi/WBu3oCxsIAEVB57l3zQR+qK//O/2TLxHRVmhQIYG7N
	bV5HcQlXJ/24BU7TgtCymi096WZmiUzNldofbZkGf2qdWCko5dorRehaxZIR4sTx9MLtqCC
	TXDxgA0B/Dsv8G8GNoOVbAe786xM3TeH/fUwtOVzz9BuAcT4ftStSAWSxsOYdiz/zcjsxlZ
	r+7RfLBCO5PrGcrTkOvbyrJ0zXZvrVYEInanOaqjll0VIOSa49ZOMez6Maj4lGWsalLIw0u
	K1YXiY6avAJ5iRc8R4hiTQf+oBM9sjx09T9WngZm4cPYymx/UZecMp1jJXOhfduz/7Nju+o
	qhy8d4MXKDSucSQq/v229abtjn/RCUVIVrb5KgB1xQFMy8uv/12ga5w//so4BbrxfKuzQCf
	Z1OdClJXYKgKXYbcmiKlqQPhqxFFlReSsmg43uprisPeOa7DXETbkK64dvS5a2x9GP2vku3
	O7w+HPPqH3VW/O4c4oRphiKPEdcwgh50Stlciz6P7FCBQTqKBLkFj3dn+vNtl3HT6Zj5d3v
	G9yoY2DiQM5er/cbC5AjimvzZvdWL1cxSSzSTplb+WmJVpF38DOXljtEio/fah1wNn4oT04
	Pu4xUpNK16wBPkcrsMpRPdmv5MQ3ZxduSERmy5hOORcTI2lu91f43K7ivs3YYNKIUiDTKiA
	Z/VUNL2S6oa44N0qOOVu2diTLx77B8KSl2TB3YXI5Mj9jmMOJ8nSfCjyco4trTlGmsl2ySW
	hV6tp7uImZWuhQKcvYYcMD+MleXBhD3x38StJtwOsCuIeKdVfoqGz5GZboZSjXZBpa6klsR
	r9/tbJTGqtLnjCo4Yamy/7Y/x4ngQGmvJwGT21gKEAEt468qyWTozkcKS3DZDwTYfZk5Bc4
	hkv2UCgCfzMQ3rbt5j6OlZOkqqe2BLXQe4xsJrgw==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_015644_551553_0A005CB0 
X-CRM114-Status: UNSURE (   7.43  )
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
Cc: andrew@lunn.ch, Conor Dooley <conor.dooley@microchip.com>, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch adds device tree binding support for
Sakura Pi RK3308B, with compatibility for the
Rockchip RK3308 SoC.

Link: https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce

Signed-off-by: Hsun Lai <i@chainsx.cn>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115c3ca43..c64adc0d0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1109,6 +1109,11 @@ properties:
           - const: rockchip,rk3588-toybrick-x0
           - const: rockchip,rk3588
 
+      - description: Sakura Pi RK3308B
+        items:
+          - const: sakurapi,rk3308-sakurapi-rk3308b
+          - const: rockchip,rk3308
+
       - description: Sinovoip RK3308 Banana Pi P2 Pro
         items:
           - const: sinovoip,rk3308-bpi-p2pro
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
