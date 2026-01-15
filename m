Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADF9ED41170
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5d9Q541/qhRjfqeM1tIta59xX+0LUE/847SnwJiQ9mw=; b=0exBTj0drt2uDg
	o2cxdtDuQ1iNGSUvLxt3nYwJ2E/D2NGWgcpVTv4t28ZVjkEdY9ACD8IDZ3LTIZKxhz9swaEB56Qjt
	jN4OlbHxKXBPYQLCpC1YtMVZOqAnmxBngD4CG2cW0CbqM/lroDfJuQ1F6tolBqdLtEspQDxESf2Hk
	hZO1zVuY0a2Q/lJNOU3jOWbLHi5v4zSv+M3mZuhEBwCg/jkeLuWM7BqPpCPGXYWN6a++ZOD71aD6p
	rc8bzK6kssVmU+WIbVe5xP1ImpcQbQuxMrqeA99INO/vNiaUWV4c6Az3uLaNibDMYakDfKNBISAsY
	Lk5Ub/fDBXzpz3pb5hQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgLBC-0000000CC14-0sJE;
	Thu, 15 Jan 2026 11:06:18 +0000
Received: from mail-m3293.qiye.163.com ([220.197.32.93])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgLB9-0000000CBym-1QVA;
	Thu, 15 Jan 2026 11:06:17 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30c74f925;
	Thu, 15 Jan 2026 19:06:02 +0800 (GMT+08:00)
Message-ID: <d487d1c4-a21e-4d6f-bc01-5797eb449c57@rock-chips.com>
Date: Thu, 15 Jan 2026 19:05:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: rockchip: Enable HDMI output on
 RK3368-Lion-Haikou
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20260114230707.4175162-1-heiko@sntech.de>
 <20260114230707.4175162-4-heiko@sntech.de>
 <8f7880cc-5469-4ac1-9fcc-9bd33327e571@rock-chips.com>
 <10786293.qUNvkh4Gvn@diego>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <10786293.qUNvkh4Gvn@diego>
X-HM-Tid: 0a9bc155786603abkunmbbe2c43d3c9934
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxoeHVZJSR1KTx1OHktITh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QMy6QsEf96Dxldir3W7DP9dSiOA0T3gLQiix77OsfmCztiqZc6x2PJiSZu8fQBvp87FDBlWY1SOrAsDlqs230IwcfxWQnXbqAD3TczkuYSEH4rBLdW0ptICsFjBdO5Rx1WdZs+hU9vSjowTEPb+YosktOFR7nAjSEmeYy7UECts=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=VITCb4bX5R30M6IQTSFF+7s0mSypA76PtH4Lp3AhVpc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_030615_926451_982DC930 
X-CRM114-Status: GOOD (  12.78  )
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

T24gMS8xNS8yMDI2IDU6MzUgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpLAo+IAo+IEFt
IERvbm5lcnN0YWcsIDE1LiBKYW51YXIgMjAyNiwgMDI6MjU6MzQgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPj4gT24gMS8xNS8yMDI2IDc6MDcgQU0s
IEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+Pj4gRnJvbTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0
dWVibmVyQGNoZXJyeS5kZT4KPj4+Cj4+PiBFbmFibGUgdGhlIFZPUCBhbmQgSERNSSBjb250cm9s
bGVyIG9uIHRoZSBMaW9uLUhhaWtvdSBib2FyZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+Pj4gLS0tCj4+PiAgLi4uL2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM2OC1saW9uLWhhaWtvdS5kdHMgICAgIHwgMTYgKysrKysrKysr
KysrKysrKwo+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LWxpb24uZHRz
aSAgICB8ICA1ICsrKysrCj4+PiAgMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCj4+
Pgo+Pgo+PiBJIGd1ZXNzIE5QTEwgaXMgYW4gaW5kZXBlbmRlbnQgUExMIGF2YWlsYWJsZSBmb3Ig
Vk9QLCAKPj4gY291bGQgeW91IGdpdmUgaXQgYSB0cnk/Cj4gCj4gbm90IHJlYWxseSBzdXJlIHdo
YXQgeW91IG1lYW4gaGVyZS4KPiAKPiBUaGUgVk9QLWJpbmRpbmcgc3BlY2lmaWVzIHRoZSBhY2xr
LCBkY2xrIGFuZCBoY2xrIGNsb2Nrcy4KPiAKPiBUaGUgTlBMTCBpcyBhIHBvc3NpYmxlIHNvdXJj
ZSBmb3IgcXVpdGUgYSBsb3Qgb2YgcGVyaXBoZXJhbHMgb24gdGhlIHJrMzM2OAo+IGFjbGtfY2Np
X3ByZSwgIHNjbGtfdGNwLCB2ZXB1L3ZkcHUsIGhldmMsIGlzcCwgZ3B1LCBnbWFjCj4gCj4gU28g
aXQncyBkZWZpbml0bHkgbm90IGRlZGljYXRlZCB0byB0aGUgVk9QLCBhbmQgdGh1cyBzaG91bGQg
bm90Cj4gY2hhbmdlIGZyZXF1ZW5jeSBmb3IgdGhlIFZPUCBhbG9uZSwgYmVjYXVzZSB0aGF0IGNv
dWxkIGFmZmVjdAo+IG90aGVyIGJsb2Nrcy4KPiAKPiAKPiBIZWlrbwoKT2gsIHlvdSBhcmUgcmln
aHQuIEl0IGlzIGEgZ2VuZXJhbCBwdXJwb3NlIFBMTC4KCi0tIApCZXN0LCAKQ2hhb3lpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
