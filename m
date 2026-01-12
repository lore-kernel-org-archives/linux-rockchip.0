Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B849BD2504E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 08:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rzr+O52fLP+zzV7SwZouzX+iCcwHTMBWxeIHjRnYegg=; b=l4EuXeWeaO3l0o
	TCeRPvy/p+lPtdOB+4ZGlrZx9L2xEeJ1aGAxvlbuWip3o9yQibjE0EszULS7jKB6aFQ6PdLz5TT9w
	k+7E2GH9YI5u9EfcQ2eN8UiMkjU55Z8kF3pn8KFD5IprUGryVJiZ6szk5HDoxXPP3u6iGCU5U3RzZ
	zyiH9G8kvJO6yIhzeccSNuc8z7rjQuuYpby+Z713MF7/Vx/kQlRTLdAKHkMUr9Ncne7+dMwVnWh4J
	RWZ+TFdseLpChXCDsWfgSM54T/HWckSoJBN1gUahwlKYzu92BtsK/nOvnybaUTgLohLkmSrXeHxIy
	39UF5vFkzrge38w16AHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDJ9-00000004zPz-2ZPa;
	Mon, 12 Jan 2026 08:29:51 +0000
Received: from mail-m49195.qiye.163.com ([45.254.49.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDJ6-00000004zPN-3TeD;
	Mon, 12 Jan 2026 08:29:50 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 304edcf3d;
	Mon, 12 Jan 2026 16:29:41 +0800 (GMT+08:00)
Message-ID: <c3ee063c-ca11-44e4-9e7d-3861a82db3ea@rock-chips.com>
Date: Mon, 12 Jan 2026 16:29:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de, ulf.hansson@linaro.org
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
 <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
X-HM-Tid: 0a9bb1533d8c03abkunm92c5f95a596e3e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh9CSlYZGUgaQk5KTB0aSRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Mz2WHVuMW+7iMT6s/m6RA4cKPpvNWA5eAospboY6hfG3NKiR+1QnkgYooBlte1KHY4+ns2qePp1sfMRrsXRkGYSZK4i1/SBs1r9qhIDriuE7JDiTXQTo6Gs2mdlI7fMz/iKkcbaxz3vG9M0CFLUa/mIqZtuybHllIkLPUm9gVSI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3yzVRdrNoDKkroUAcz9fdq8LyCXDhJQxmbfKFPZcDZY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_002949_054031_156D1FE5 
X-CRM114-Status: GOOD (  13.51  )
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

SGkgU2hhd24sCgpPbiAxLzEyLzIwMjYgMTE6NTYgQU0sIFNoYXduIExpbiB3cm90ZToKPiDlnKgg
MjAyNi8wMS8xMiDmmJ/mnJ/kuIAgOTozMiwgU2hhd24gTGluIOWGmemBkzoKPj4g5ZyoIDIwMjYv
MDEvMTAg5pif5pyf5YWtIDk6MDcsIE1hcmNvIFNjaGlycm1laXN0ZXIg5YaZ6YGTOgo+Pj4gVGhp
cyBzZXJpZXMgYWRkcmVzc2VzIGEgbWljcm9TRCBzdGFiaWxpdHkgaXNzdWUgb24gdGhlIEZyaWVu
ZGx5RWxlYwo+Pj4gTmFub1BpIFI3NlMgKFJLMzU3NikuIFRoZSBib2FyZCBjdXJyZW50bHkgc3Vm
ZmVycyBmcm9tIGEgNDAwa0h6Cj4+PiByZXR1bmluZyBsb29wIHdoZW4gdGhlIGNvbnRyb2xsZXIg
YXR0ZW1wdHMgdG8gZW50ZXIgcnVudGltZS1zdXNwZW5kCj4+PiBkdXJpbmcgaWRsZSBwZXJpb2Rz
Lgo+Pj4KPj4+IEV2aWRlbmNlIG9mIHRoZSBmYWlsdXJlIGluIGRtZXNnOgo+Pj4gW0ZyaSBKYW4g
IDIgMDE6Mjg6MDIgMjAyNl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gNDAw
MDAwSHoKPj4+IFtGcmkgSmFuICAyIDAxOjI4OjAzIDIwMjZdIG1tY19ob3N0IG1tYzE6IEJ1cyBz
cGVlZCAoc2xvdCAwKSA9IDE5ODAwMDAwMEh6Cj4+PiBbRnJpIEphbiAgMiAwMToyODowMyAyMDI2
XSBkd21tY19yb2NrY2hpcCAyYTMxMDAwMC5tbWM6IFN1Y2Nlc3NmdWxseSB0dW5lZCBwaGFzZSB0
byAyMzMKPj4+IFtGcmkgSmFuICAyIDAxOjI4OjA0IDIwMjZdIG1tY19ob3N0IG1tYzE6IEJ1cyBz
cGVlZCAoc2xvdCAwKSA9IDQwMDAwMEh6Cj4+Pgo+Pgo+PiBEb2VzIHRoaXMgcHJvYmxlbSBoYXBw
ZW4gd2l0aCBhbGwgbWljcm9TRHMgb3IganVzdCAqYSogbWljcm9TRCBwZXIKPj4geW91ciBkZXNj
cmlwdGlvbj8KPj4gSGF2ZSB5b3UgZXZlciB0cmllZCB0byBkaXNhYmxlIFNEUjEwNCBzdXBwb3J0
Pwo+Pgo+IAo+IEEgcXVpY2sgdXBkYXRlLgo+IAo+IEkgZm91bmQgc2V2ZXJhbCBwcm9ibGVtcyBv
biBSSzM1NzYgZm9yIHN1cHBvcnRpbmcgc2QgY2FyZHMuIEkgd29uZGVyZWQKPiBob3cgYWxsIHVw
c3RyZWFtIFJLMzU3NiBib2FyZHMgY2xhaW1pbmcgU0Qgc3VwcG9ydCB3b3JrPyBBbnl3YXksIEkg
c2VudAo+IGEgc2VyaWVzIHRvIHRoZSBsaXN0WzFdLCBub3Qgc3VyZSBpZiBpdCBmaXhlcyB0aGUg
cHJvYmxlbSB5b3UgZmFjZWQsIGJ1dAo+IHRoZXNlIHNob3VsZCBiZSB0aGUgcmlnaHQgcGF0Y2hl
cyB5b3Ugc2hvdWxkIGhhdmUgYSB0cnkuCj4gCj4gCj4gWzFdaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcm9ja2NoaXAvMTc2ODE4OTc2OC05NjMzMy0xLWdpdC1zZW5kLWVtYWlsLXNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbS9ULyN0Cj4gCgpJIGVuY291bnRlcmVkIGEgc2ltaWxhciBpc3N1
ZSBvbiB0aGUgUkszNTc2IEVWQjIuIAoKSXQgc2VlbXMgdGhhdCB0aGUgY2QtZ3Bpb3MgZmVhdHVy
ZSBhcmUgYnJva2VuLCBzbyBTRCBjYXJkIGV2ZW50cwpjYW5ub3QgYmUgZGV0ZWN0ZWQuIEhvd2V2
ZXIsIGlmIHRoZSBTRCBjYXJkIGlzIGluc2VydGVkIGJlZm9yZSBMaW51eApib290cywgaXQgY2Fu
IGF0IGxlYXN0IHN0YXJ0IHVwLiBJIHN1c3BlY3QgdGhhdCBvdGhlciBib2FyZHMgbWF5IGJlaGF2
ZQp0aGUgc2FtZSB3YXkgOikKCi0tIApCZXN0LCAKQ2hhb3lpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
