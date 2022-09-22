Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4171FC6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 10:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PY1aUnvdHyJ2dBhSEv+6oXTKfIhK6LqytyeXA6l74s=; b=2vT7NGHy8C2FzF
	InsRdr3Fdymdfv8YyLkWeosM9/183FRpwDWXLT6E8qBueKQN2ypZALr/O4nRTy3kjAEMsQ5/gxZ3x
	sX6GtSWTPnk0zvTxlmMRfQiv+W/GCKjdY/YFfSnfP91uVR5iGPqQA06WSqlO3/EvjvrtlyXouwFcf
	XSMyh/tcgCbcHxlE/iY2oWb0px6jCqtrNy6+mNACxQDigyR2jzL4DRDWx/V1UhZlIoMn6JOUnYnia
	WgI7vTxCNkKqlyz10NPaxJcqnxZpIXaTwwygCAh03KIlycyUxX2Xku6HFx3X5XUf9Tpl/AJlvbaYE
	FvvOdTcdhWONFaR4COsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJDF-00Er41-6S; Thu, 22 Sep 2022 10:13:45 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obJCM-00EqbC-GP; Thu, 22 Sep 2022 10:12:51 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 8625A4000F;
	Thu, 22 Sep 2022 10:12:46 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: 
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	dmitry.torokhov@gmail.com,
	klaus.goger@theobroma-systems.com,
	foss+kernel@0leil.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH 3/3] =?UTF-8?q?dt-bindings:=20arm:=20rockchip:=20add=20The?= =?UTF-8?q?obroma=20Systems=20PX30-=C2=B5Q7=20(Ringneck)=20with=20Haikou?=
Date: Thu, 22 Sep 2022 12:12:11 +0200
Message-Id: <20220922101211.3215888-4-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220922101211.3215888-1-foss+kernel@0leil.net>
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_031250_728341_D98ADFDA 
X-CRM114-Status: UNSURE (   7.53  )
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
Y2spIHdpdGggSGFpa291CmRldmtpdC4KClNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxx
dWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAppbmRleCA3ODExYmE2NDE0OWMuLmYyYWE1ZGRi
NzZkMiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9y
b2NrY2hpcC55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbApAQCAtNjU4LDYgKzY1OCwxMSBAQCBwcm9wZXJ0aWVzOgogICAgICAgICAg
IC0gY29uc3Q6IHJvY2tjaGlwLHJ2MTEwOC1ldmIKICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hp
cCxydjExMDgKIAorICAgICAgLSBkZXNjcmlwdGlvbjogVGhlb2Jyb21hIFN5c3RlbXMgUFgzMC3C
tVE3IHdpdGggSGFpa291IGJhc2Vib2FyZAorICAgICAgICBpdGVtczoKKyAgICAgICAgICAtIGNv
bnN0OiB0c2QscHgzMC1yaW5nbmVjay1oYWlrb3UKKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hp
cCxweDMwCisKICAgICAgIC0gZGVzY3JpcHRpb246IFRoZW9icm9tYSBTeXN0ZW1zIFJLMzM2OC11
UTcgd2l0aCBIYWlrb3UgYmFzZWJvYXJkCiAgICAgICAgIGl0ZW1zOgogICAgICAgICAgIC0gY29u
c3Q6IHRzZCxyazMzNjgtbGlvbi1oYWlrb3UKLS0gCjIuMzcuMwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
