Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 296C6C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpYMQAzogPe8BmaE1XTo7kk99NDDJReOHg/DC075RY4=; b=f6KwUTiKFjn6pt
	o4Skjvrs0DfaAE7Sa778hOAWRABF9DoV8kK/UyXlAIt0FGz0Pmi1B1sYVYd5c9HBNj73ZRuKmGF4v
	GGcl9dPxlab6UT7yFwNNkDP48JoRd+MfctpmXoHVq9+im+Woo+8wEfN3n/D9lAUY3mRfRkcOIt3ro
	vVV9dNxspfLkDZd6nSUbGI54cDS1h5gHtktCHaqz4T09mWFF1oVyDmUKpoHiJGimSbh5tYdVBx40e
	ajL5Ip0Q6CCB58Bs3ZOGXevMAeXJ8ON1B4R2SzgIF0UbYWLwgZA8XpUmqz0REukHnnSI8ET1YQslN
	0KQIhbZH0BSiUFmYWM5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8tA-00Ekzl-2J;
	Mon, 18 Sep 2023 07:41:48 +0000
Received: from mail-m127226.xmail.ntesmail.com ([115.236.127.226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8t8-00EkzB-1h;
	Mon, 18 Sep 2023 07:41:47 +0000
DKIM-Signature: a=rsa-sha256;
	b=OVBVYR//m2GOTeqi6qbpjcHpfx0LAIPHufHrPyHGpugR30OthtIJY5L0htqTYiuizLQlrm3RZwhNFJU0Kyy1msBy66LlKq58eJf9tN/fcCz6yptJjb0T7Pc7DI+EflLLvviOCgr3wnL4ayluSF3/8LKF7YAljAkE1TlTpq2yD6c=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=DvBFYt+jqVEQKs9UGgC5VD5M1NXx2xvswehqQpfi6qw=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 5F67C6805DF;
	Mon, 18 Sep 2023 15:31:55 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	xxx@rock-chips.com,
	xf@rock-chips.com
Subject: [PATCH v1 3/8] dt-bindings: clock: rk3188: Add binding id for ACLK_CPU_PRE
Date: Mon, 18 Sep 2023 15:31:46 +0800
Message-Id: <20230918073151.7660-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhgfTlZLSR9IHR0aH0lDGEJVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa733f8f92eb5kusn5f67c6805df
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OCI6Shw5CD0CSkodIg4xSUMj
	KD0wC09VSlVKTUJOS0lJSEpNSUNPVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlKTEw3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_004146_702786_B30BECD2 
X-CRM114-Status: UNSURE (   6.53  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

export clk id ACLK_CPU_PRE.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 include/dt-bindings/clock/rk3188-cru-common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3188-cru-common.h b/include/dt-bindings/clock/rk3188-cru-common.h
index afad90680fce..e728ed076c5b 100644
--- a/include/dt-bindings/clock/rk3188-cru-common.h
+++ b/include/dt-bindings/clock/rk3188-cru-common.h
@@ -67,6 +67,7 @@
 #define ACLK_PERI		204
 #define ACLK_VEPU		205
 #define ACLK_VDPU		206
+#define ACLK_CPU_PRE		207
 
 /* pclk gates */
 #define PCLK_GRF		320
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
