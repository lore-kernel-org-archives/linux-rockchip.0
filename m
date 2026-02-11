Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D598E9E30A
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 14:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JMW9l+C1UcaFIT+UrbKfEzbRNSIoXN1n84wxfifMRYQ=; b=sqz8pFQOTSNA6ySx9WzhS4CAGT
	+4QP8yHnJZFJ+dMNBCnuKRzJzJsFcHf2+bKatHag8ATNkbSQ5Uu6TI7prNVJ5GYuN1fUzp2UxDL+I
	eLoeOBs2xuSS/0avoXu6+zy2AhpXKZ/oCD76asYNGonyaCDSEETEMPbMnAKyArRo/iuUDXgRoX4Cm
	8Rs6pLdOB/SSidoBOANyxrutvNpqkKcZjIknfEzyXVwIfiTaMwjXXBjQypp8Sig3r/g59iyMSIwG4
	b1CvEYq2d6T0RNtTdl/Ox59ue5ecD2FxjV79bVoUG/b1A13NCjFTxL/maMvZMKwAic2Cy5SZ+ZPHR
	PV9RMcfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqApc-00000000i8W-2k5n;
	Wed, 11 Feb 2026 14:04:40 +0000
Received: from mail-m49211.qiye.163.com ([45.254.49.211])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqApX-00000000i7f-3rgM
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Feb 2026 14:04:39 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 33e08660a;
	Wed, 11 Feb 2026 22:04:26 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B
 compatible
To: Fabio Estevam <festevam@gmail.com>, ulf.hansson@linaro.org
References: <20260207131041.2833840-1-festevam@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <181120ce-2ba5-ff20-951b-e6b5d65995ae@rock-chips.com>
Date: Wed, 11 Feb 2026 22:04:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260207131041.2833840-1-festevam@gmail.com>
X-HM-Tid: 0a9c4d047de109cckunmb311f1781114cd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNOHVZISEwfSEwdTU4eGEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZGyScfI7bU8+1wFbfFPm+PUfnmYts3g9ia1xMhf6BsC3CuveXH69Oje5KEL3ofp+9a0JuboGgq6qSLqYO+KwUmGiAfR/ApfzA/FXB10M4V9yYBFepmcL76bLyuBRBpKyV3BE1pW5QFnFbEYFmjqGox7JtVBfjad3rbJa74D8v0A=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eZbiOdABFeV6km7MW+Bf453bvMNUUhmLzSEIjWFy8dI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_060437_944346_8BCB5FC4 
X-CRM114-Status: GOOD (  12.42  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMi8wNyDQx8bawfkgMjE6MTAsIEZhYmlvIEVzdGV2YW0g0LS1wDoKPiBGcm9tOiBG
YWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBuYWJsYWRldi5jb20+Cj4gCj4gVGhlIFJWMTEwM0IgdXNl
cyB0aGUgRGVzaWduV2FyZSBNU0hDIGNvbnRyb2xsZXIgY29tcGF0aWJsZSB3aXRoIHRoZQo+IGV4
aXN0aW5nIFJvY2tjaGlwIFJLMzI4OCB2YXJpYW50LiBBZGQgdGhlIHJvY2tjaGlwLHJ2MTEwM2It
ZHctbXNoYwo+IGNvbXBhdGlibGUgc3RyaW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZhYmlvIEVz
dGV2YW0gPGZlc3RldmFtQG5hYmxhZGV2LmNvbT4KClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNo
YXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gLS0tCj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAtIE1h
a2UgY29tbWl0IGxvZyBtb3JlIGNvbmNpc2UuCj4gCj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbCB8IDEgKwo+ICAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwKPiBpbmRleCBh
Y2I5ZmI5YTkyY2QuLmE3NTIwOWJkMjcxMCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbAo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sCj4g
QEAgLTQzLDYgKzQzLDcgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgICAgICAgLSByb2NrY2hp
cCxyazM1NjItZHctbXNoYwo+ICAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU2OC1kdy1t
c2hjCj4gICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LWR3LW1zaGMKPiArICAgICAg
ICAgICAgICAtIHJvY2tjaGlwLHJ2MTEwM2ItZHctbXNoYwo+ICAgICAgICAgICAgICAgICAtIHJv
Y2tjaGlwLHJ2MTEwOC1kdy1tc2hjCj4gICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscnYxMTI2
LWR3LW1zaGMKPiAgICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMyODgtZHctbXNoYwo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
