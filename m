Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77EF6C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 10:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqdaIoaBVgknIRuoSGlFbEQaIdpB1ChAPlM0IEkn91I=; b=eVNA+TH8/3yHBk
	rFe6dOoko2gGztQAnGLuAf6zfaZgGFwtWeb9RgHtWO2kZ4Lm+MmajTIdZsGvnDRJHMi6mPAKLc8Pc
	j5P6vZ4Eaz6LRmVlIrE4wPIH5XAdNripufHRcM6OkyUWT9lrEWUswwyBFmxfbs2h9iIdqeStn9a6/
	9s8wdnRaIJrmrmWk8l1F2yU7rJDSByWD4opZ4IGbbc9MqkX9NWL0m36xqLls01KiP7hvkqXWqRKY0
	RiK8IlEGahyHh8LE4mppPSbdZ9vlc26y5HL5alDgBI8MI8FnZayVxX8zKh6+hp3rJqAT2T/8o5JWZ
	KWGXHNhgkOkHPWBZzrfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okNKQ-00AGyF-C0; Mon, 17 Oct 2022 10:26:38 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okNJy-00AGou-LF; Mon, 17 Oct 2022 10:26:12 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id A8DD5E000C;
	Mon, 17 Oct 2022 10:26:06 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: foss+kernel@0leil.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] =?utf-8?q?dt-bindings:=20arm:=20rockchip:=20add=20Theobro?= =?utf-8?q?ma=20Systems=20PX30-=C2=B5Q7=20(Ringneck)=20with=20Haikou?=
Date: Mon, 17 Oct 2022 12:25:25 +0200
Message-Id: <20220930-upstream-ringneck-v2-2-6671694b6934@theobroma-systems.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220930-upstream-ringneck-v2-0-6671694b6934@theobroma-systems.com>
References: <20220930-upstream-ringneck-v2-0-6671694b6934@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_032610_863529_FC1B23ED 
X-CRM114-Status: UNSURE (   7.29  )
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

RnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNv
bT4KCkFkZCBlbnRyeSBmb3IgdGhlIFRoZW9icm9tYSBTeXN0ZW1zIFBYMzAtwrVRNyAoUmluZ25l
Y2spIHdpdGggSGFpa291CmRldmtpdC4KCkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+ClNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2No
dWx6IDxxdWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Ci0tLQogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwogMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAppbmRleCA3ODExYmE2NDE0OWNiLi42
ZDI1NmIxYzFiNTg4IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL3JvY2tjaGlwLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yb2NrY2hpcC55YW1sCkBAIC02NTgsNiArNjU4LDExIEBAIHByb3BlcnRpZXM6CiAg
ICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscnYxMTA4LWV2YgogICAgICAgICAgIC0gY29uc3Q6
IHJvY2tjaGlwLHJ2MTEwOAogCisgICAgICAtIGRlc2NyaXB0aW9uOiBUaGVvYnJvbWEgU3lzdGVt
cyBQWDMwLXVRNyB3aXRoIEhhaWtvdSBiYXNlYm9hcmQKKyAgICAgICAgaXRlbXM6CisgICAgICAg
ICAgLSBjb25zdDogdHNkLHB4MzAtcmluZ25lY2staGFpa291CisgICAgICAgICAgLSBjb25zdDog
cm9ja2NoaXAscHgzMAorCiAgICAgICAtIGRlc2NyaXB0aW9uOiBUaGVvYnJvbWEgU3lzdGVtcyBS
SzMzNjgtdVE3IHdpdGggSGFpa291IGJhc2Vib2FyZAogICAgICAgICBpdGVtczoKICAgICAgICAg
ICAtIGNvbnN0OiB0c2QscmszMzY4LWxpb24taGFpa291CgotLSAKYjQgMC4xMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
