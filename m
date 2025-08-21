Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D8CCA0EFC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 14:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hEtO91NpYny7JmnieF7yCSNUjwuebwGFXUloEfkhmQ=; b=KPeb9pRmaQUm3V
	fCTcE7u1zrBP9i/MOrRnICUoa1A1UEv+7Z3mTNboiqVmTWRZYKlTkwWYDBWzqPp6WmeLoVeH5xThu
	76DrnN2lXI5nhQ4Ch0eIDxcxOEQIbSNhuirZtANOU2/JqK3LkkjphJn+gbL8yekptdZueZFKJXaTc
	7uWCYEK1q8/Z5S9DnnfS1pY7OpinXpna/v/bnF5kMGMUXr5i1l7bAUGLnkXPhtUsR3cjCLhREgjpd
	gTfIrgVXRNBb99r+9eha9Kz71s6RWDXIDya7CT4BeFdfTGNENAW2tIllWTx7LotCv2OtxvmB0wjQL
	xc+6eZX5yRUzAZAW6Epw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5pu-0000000H9Fk-2k3t;
	Thu, 21 Aug 2025 14:00:14 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up3C9-0000000Ghun-1YWZ
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 11:11:02 +0000
X-QQ-mid: zesmtpip2t1755774593t81369842
X-QQ-Originating-IP: Ag73yM+7wvdFdbNm9yHrmkwzqg+tb/7BJP3xAKS4ils=
Received: from chainsx-ubuntu-server.lan ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 21 Aug 2025 19:09:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14449137100758401658
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v1 1/2] dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
Date: Thu, 21 Aug 2025 19:09:41 +0800
Message-Id: <20250821110942.172150-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250821110942.172150-1-i@chainsx.cn>
References: <20250821110942.172150-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MAelC2bHk4BLleqiFxdwbElLhtVCFq+8q6HzPL2LSfVow4E4fJZE25rr
	aqXkpqwlOsm/7p4WHg6dZTVsRXUGyIXTOPQN9TeE97ypeT++tvXu5EzzbLSHaJwr53ulS3v
	ev21guAEavBM4xPDT6vHQ6Ohs3wnRqZ1W3alFqEqV3kWtGomzmEdSSer8uIYnEHJqIT2/Cg
	RLpRTPZLVytujgo5xe8YSSlmkHVzJH46kWuj4rjLSsrIhZ57l8BLBL98awnyZiJAqD8OguO
	O0AD/jdyU/yUQx044c3OlgJxTM3CfLNC/SvXe7FVcw69qUj4SnQK1uExPWiaFVTvjLeYhaI
	cDKBI/hiL5LFrp/k/qH0W5HNhXGnadd4VPR3BKBtk93T4GDR22b5lycQfEfi+7H+6l+gu6E
	siFtu9+X38XfTjAFfjy0rKygpHEZtMMzjmZ6HE6FaMoS9FHdB7Tf6P+RRVLUr9Y3jWorkJ8
	mcmmyuGXfGAVCgG0cFLidwflhnwgQyEHjwhHJ5wtDTdMRvMYFoiiEhBAZHEWqVhT6BPbWhP
	/5SLSCbg3/E6J6PalEl6qt6qQfIQPiPReYjHabufZB+NF4x2OLwxFTrB7ysX5URCwaQKQIa
	mZlD4H1q7vOaB3NGljCVaEEawmffcgXHn+LX+O5k75jhVVGUr7ibcIxNVbFnZyhy7GOoM7X
	wi3l3aZcCcvWqTKChBcbsRlDESzpRexB6LrbTpyW+cCVaCotEWBPb/GA9RSVem3YislCF8R
	5MNGdGDwRIZOUeYpESYI9wcaYHMCI2Mv1oRni930UUP/xAoHHpBUpxsUV/+2vt0gNEw5x50
	1mPkBKnLIdOGOyMN47VKhKrvkeeNeDeogRGYRl8Zi2t8TvPlC+edmhUu7Ljbaz7EqQfZAOJ
	64V5qSPsBvSzWs8LJzy4FeiwI/+z2D9xdcz8Ff86aTbEZcvqlt7Fgg/9Vn6l10dmR36AT/m
	1S7erGwVjau1MHvmErv+PsDJVP6iNvn3CEMThj+GIJQ67jvwrrD67So9mXJRFo9CeKlcsI9
	6p6VQQLT+YXBI7Zh3alIaX95WkTNI=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_041101_671645_3914583E 
X-CRM114-Status: UNSURE (   7.10  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This documents 100ASK DShanPi A1 which is a SBC based on RK3576 SoC.

Link: https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/

Signed-off-by: Hsun Lai <i@chainsx.cn>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6a..033730861 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -15,6 +15,11 @@ properties:
   compatible:
     oneOf:
 
+      - description: 100ASK DshanPi A1 board
+        items:
+          - const: 100ask,dshanpi-a1
+          - const: rockchip,rk3576
+
       - description: 96boards RK3399 Ficus (ROCK960 Enterprise Edition)
         items:
           - const: vamrs,ficus
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
