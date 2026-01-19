Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAEC4CA5FE4
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 07:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Xqjb00iCnPdCzQQ04pT/A7uGetsUjp/OuXVXCzcsK8=; b=LHC4dHXd5GG/MM
	NdFpMfcJ93egYluLDmgPPmJYBOdx6iD++YO1SS+ZTkjP8VSz44fiWCVRZ80FuTzSYxXWnGZP1hWoO
	j9D7y/mAREaDReLgaIC4ImTKwk1Xzg7fpvnXt5j1htgRHorj2eFgpXPvTEgsDVLodGoYDBx0NNMIt
	aym90PdZcm0QGAB7RN8LBbI24ewx6E0C8g+87G/xw1jwyFPR/Z0AucBGFaOVINJfevAk2NXoulI8J
	lt17WowZo46inzipVGsR3HVWAE0GIv7mESODu+ecJTdIrvLgjv95NG7w1RjYzNdxAreSKyMwteGNc
	jzMU8YLFkHIATNZtE2kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhjNx-00000001SIF-0GhH;
	Mon, 19 Jan 2026 07:09:13 +0000
Received: from mail-m3270.qiye.163.com ([220.197.32.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhjNs-00000001SGK-2dem;
	Mon, 19 Jan 2026 07:09:12 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 311f4d8f4;
	Mon, 19 Jan 2026 15:08:57 +0800 (GMT+08:00)
Message-ID: <c4c17773-1146-4db9-bf2f-a7500a8bd734@rock-chips.com>
Date: Mon, 19 Jan 2026 15:08:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
To: Johan Jonker <jbx6244@gmail.com>
References: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
X-HM-Tid: 0a9bd515d81509cckunmaf6f77109404f8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9CQlZOSh8ZGkIfGE4fGEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VZzSwM/5kKzi1RZ/Zqt2LYEt8GQ3mWzthhHNV+B100czzDfBwEdOpLu3cHiiNHhSXQrIMbHEI5+Olbuj7OSAShZCiLQEZ/DaQTkYYtyGDm0SUsl5JDYdVgJEGr1fwW38iSrAYqT14q2uF7HazulWXXrvd9IoFDWdCX5PFeru7LQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=UiQ+cxmVNau4z+karizH0FDcMDsn/Cs3rk+K8ty0T4w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_230909_214273_A52F23C7 
X-CRM114-Status: GOOD (  16.84  )
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSm9oYW4sCgrlnKggMjAyNi8wMS8xNyDmmJ/mnJ/lha0gNTowNSwgSm9oYW4gSm9ua2VyIOWG
memBkzoKPiBUaGUgdXNlIG9mIG1zaGMgYWxpYXNlcyBpcyBkZXByZWNhdGVkIGZvciBzb21lIHdo
aWxlLAo+IHNvIHJlbW92ZSB0aGVtIGZyb20gdGhlIHJrMzAzNi5kdHNpIGZpbGUuCj4gCgpJIG5v
dGljZWQgdGhhdCB0aGUgYWxpYXMgcHJvcGVydHkgaXMgc3RpbGwgbGlzdGVkIGluIHRoZQpkb2N1
bWVudGF0aW9uWzFdLiBDb3VsZCB5b3UgcGxlYXNlIHNoYXJlIHdoZXJlIGl0IGhhcyBiZWVuIGZv
cm1hbGx5Cm1hcmtlZCBhcyBkZXByZWNhdGVkPyBJIG1heSBoYXZlIG1pc3NlZCB0aGUgdXBkYXRl
LgoKWzFdIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jLWNvbnRyb2xs
ZXIueWFtbAoKPiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29t
Pgo+IC0tLQo+ICAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kgfCAzIC0t
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcmszMDM2LmR0c2kKPiBpbmRleCBmY2EyMWViYjIyNGIuLjc4YWZhZTQyZjhiMiAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNpCj4gQEAgLTIzLDkgKzIz
LDYgQEAgYWxpYXNlcyB7Cj4gICAJCWkyYzAgPSAmaTJjMDsKPiAgIAkJaTJjMSA9ICZpMmMxOwo+
ICAgCQlpMmMyID0gJmkyYzI7Cj4gLQkJbXNoYzAgPSAmZW1tYzsKPiAtCQltc2hjMSA9ICZzZG1t
YzsKPiAtCQltc2hjMiA9ICZzZGlvOwo+ICAgCQlzZXJpYWwwID0gJnVhcnQwOwo+ICAgCQlzZXJp
YWwxID0gJnVhcnQxOwo+ICAgCQlzZXJpYWwyID0gJnVhcnQyOwo+IC0tCj4gMi4zOS41Cj4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
