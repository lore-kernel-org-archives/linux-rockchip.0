Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 038E1C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 22:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BI1kgT/Ca0DF6YGAu1FnV44VQPvQ9/2h5ds9VGlLHmI=; b=b0prtk2ECU0JkO
	09zD9z0y+9mxAKeAb8bgA0wJdNiERc99/yQ6f0u+cHQ+pbbTCWNEFz+JvDMcO+fAvNviTtru/sd5V
	xgnOo4YtDK7mDQwbN9X5oL/FZYhNkC3tZWVdUlCmj3avxm1n1526tyDNt08EQGlH76Ul20owPthMt
	0hC8iQw/NE/Y+L81gavOfrJBhS+b80tazqm0/PZ2KkXqDsP6UkGVg40rr8tJN2rtGOEcOYpcKYTzh
	p0JfdlMdHk2tcetz+7kYs8IbOIFr1Z3Sx5/28pNGZ1H05nIp9KPQ3WmjrTMG0HrHxMQCF91PZIGfR
	ca6KRa9XahaMmdS2TvnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5Ju-0000000EBhv-32eR;
	Fri, 16 Aug 2024 22:21:18 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5Jq-0000000EBh1-3KQH
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 22:21:17 +0000
X-QQ-mid: bizesmtp78t1723846849tqa8qauj
X-QQ-Originating-IP: 7rc+piy0QdvcXbvpTW38+wBKyonJqF5RZPuDnxf5MOg=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 17 Aug 2024 06:20:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17650515702302833842
Message-ID: <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
Date: Sat, 17 Aug 2024 07:20:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1819066.TLkxdtWsSY@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_152115_236749_CBD3FFF7 
X-CRM114-Status: UNSURE (   7.36  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiA4LzE3LzI0IDA3OjExLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBGcmVpdGFn
LCAxNi4gQXVndXN0IDIwMjQsIDIzOjM0OjI5IENFU1Qgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+
PiBSYWR4YSBST0NLIFBpIEUgdjMuMCBpcyBhIGNvbXBhY3QgbmV0d29ya2luZyBTQkNbMV0gdXNp
bmcgdGhlIFJvY2tjaGlwCj4+IFJLMzMyOCBjaGlwIHRoYXQgc2hpcHMgaW4gYSBudW1iZXIgb2Yg
UkFNL2VNTUMvV2lGaS9CVCBjb25maWd1cmF0aW9uczoKPj4KPj4gLSBSb2NrY2hpcCBSSzMzMjgg
U29DCj4+IC0gUXVhZCBBNTMgQ1BVCj4+IC0gNTEyTUIvMUdCLzJHQiBERFI0IFJBTQooc25pcCkK
PiBjYW4geW91IHBsZWFzZSBkZXNjcmliZSB3aGF0IGlzIGRpZmZlcmVudCBpbiB0aGF0IHYzIGJv
YXJkPwo+IERlc2NyaWJpbmcgd2hhdCBpcyBkaWZmZXJlbnQgdG8gcmVxdWlyZSBhIHNlcGFyYXRl
IGJvYXJkIHNob3VsZCd2ZSBiZWVuCj4gcGFydCBvZiB0aGUgY29tbWl0IG1lc3NhZ2UuCj4gCj4g
QmVjYXVzZSBmcm9tIHRob3NlIGNoYW5nZXMsIHRoZSBib3R0b20gbGluZSBjdXJyZW50bHkgc2Vl
bXMgdG8gYmUKPiB0aGUgc2FtZSBib2FyZCB3aXRoIHN3YXBwZWQgbW1jIGFsaWFzZXM/CgppdCdz
IG5ldyBib2FyZCB3aGljaCB1c2VzIEREUjQgUkFNIChpbnN0ZWFkIG9mIEREUjMgUkFNIG9uIFBp
IEUpLgpkaWZmZXJlbnQgYm9vdGxvYWRlciAoVS1Cb290KSBpcyByZXF1aXJlZC4KCmFkZGluZyB2
MyBkdHMgc2VlbXMgbm90IHRvIGJlIHNvIGltcG9ydGFudCBmb3IgTGludXgsIGJ1dCBpdCdzIHZl
cnkgCmltcG9ydGFudCBmb3IgVS1Cb290IGFuZCBPcGVuV3J0KGl0IGluY2x1ZGVzIGJvb3Rsb2Fk
ZXIgZm9yIGRpc3RyaWJ1dGVkIApiaW5hcnkpLgoKQmVzdCByZWdhcmRzLAoKLS0KRlVLQVVNSSBO
YW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKPiBIZWlrbwo+IAo+IAo+
IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
