Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B93F4C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 23:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0weaINkWzP8OO9CYXXhD9IsDSFcafLp/pf0RdRvYuc0=; b=Vc80P7QqrsqG4X
	j9beOCtm0+4qBJ19OKzLCYmOV5lPC7jRy19L30GZn8JpGbRg2DCTNspMFI2PbqTbgY9qN3cunIGVI
	8uwLWe3S3Yf2WQT+BBFJWuWpgw599Wv1/u4MxySVheudVNOejzZgWV4R7XABH02mH2rlBN5+b5bBo
	vV+nVXuNyzr8htw9wvmuPyvtUGVPQE0eqdLyyRdjEU0TL5kJhbh5TdAXVpb/dNBjYiOpbpdqmi7uG
	Nwf1SQwew9/73ktWJlYlHczVkJIlDNLNpJBV6htI7KGBHeWzLyv18bB3CHiS3rRtZVsSA0gnlHiJh
	HADCp3j9krXprVdK8hSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6di-00000007C0X-42bq;
	Tue, 27 Feb 2024 23:13:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6de-00000007ByK-2erk;
	Tue, 27 Feb 2024 23:13:31 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf6dY-0002LS-HQ; Wed, 28 Feb 2024 00:13:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Elon Zhang <zhangzj@rock-chips.com>,
	conor+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	weizhao.ouyang@arm.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add devicetree support for TB-RK3588X board
Date: Wed, 28 Feb 2024 00:13:21 +0100
Message-Id: <170907558763.800427.16777226137397657885.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221022902.751528-1-zhangzj@rock-chips.com>
References: <20240221022902.751528-1-zhangzj@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_151330_776418_D21D7635 
X-CRM114-Status: UNSURE (   9.54  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAyMSBGZWIgMjAyNCAxMDoyOTowMSArMDgwMCwgRWxvbiBaaGFuZyB3cm90ZToKPiBB
ZGQgYm9hcmQgZmlsZSBmb3IgUm9ja2NoaXAgVG95YnJpY2sgVEItUkszNTg4WCBib2FyZC4KPiAK
PiBTcGVjaWZpY2F0aW9uOgo+IAlSb2NrY2hpcCBSazM1ODggU29DCj4gCTR4IEFSTSBDb3J0ZXgt
QTc2LCA0eCBBUk0gQ29ydGV4LUE1NQo+IAk4LzE2R0IgTWVtb3J5IExQRERSNHgKPiAJTWFsaSBH
NjEwTUM0IEdQVQo+IAkyw5cgTUlQSS1DU0kwIENvbm5lY3Rvcgo+IAkxeCAyTGFuZXMgUENJZTMu
MCBDb25uZWN0b3IKPiAJMXggU0FUQTMuMCBDb25uZWN0b3IKPiAJMzJHQiBlTU1DIE1vZHVsZQo+
IAkyeCBVU0IgMi4wLCAyeCBVU0IgMy4wCj4gCTF4IEhETUkgT3V0cHV0LCAxeCBIRE1JIElucHV0
Cj4gCTJ4IEV0aGVybmV0IFBvcnQKPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMl0g
YXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBkZXZpY2V0cmVlIHN1cHBvcnQgZm9yIFRCLVJLMzU4
OFggYm9hcmQKICAgICAgY29tbWl0OiA4ZmZlMzY1ZjhkYzc5OGEwOGJmMjFkNTA1MGY3YjIxYmQ2
YTg1NWE0ClsyLzJdIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgVG95YnJpY2sgVEIt
UkszNTg4WAogICAgICBjb21taXQ6IDcxNDAzODdmZjQ5ZDBmNDQ2NDhkMjZmOTc1YzZmZWFkMWM1
MDU1YjAKCkJlc3QgcmVnYXJkcywKLS0gCkhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
