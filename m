Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21D7BC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 09:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zg6iPiwzq0wMfq8UtxVJxhHNuBxNS7Jp95cD0577JKA=; b=G5Q4w4Wde9dLnY
	QdEBdXQHxiTeAMppo3s0FFg/is+5PuRxeOC5KqstDrTB4lmHBpFQP8JgSGTQjoZtAnnHfUVcQa5uv
	BE35TseFYzRMfpxGZpzotre8GZHXpty/3H/bGwlG48FPvmUlwX4F45CYB+7CkjTS9BKBYRgSMr3dr
	9ExedVNIz1wlXz71VjokMdh+fSIKEIC3cRB2aiQCZiUU9dbOSih9jfaBsCGf20uJk6tJUWwp+5z61
	NX6n6lbCML5ruYKTJYjz27myaklXvY7KIdorBv8+bf7OkaqQEB22/JuPo44Zze9NeG0gyedRQyxxw
	M5UBVsrDGPEDcAcE2ZPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIbv-00E1bL-1m; Mon, 04 Apr 2022 09:02:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIbV-00E1HY-Jd; Mon, 04 Apr 2022 09:02:31 +0000
Received: from [IPV6:2a01:e0a:120:3210:52e1:bbc1:ca8:7fa9] (unknown
 [IPv6:2a01:e0a:120:3210:52e1:bbc1:ca8:7fa9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B7F841F459F5;
 Mon,  4 Apr 2022 10:02:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649062945;
 bh=Fq1cNgcG71vKarNXb1KWa+6C35UQPBCHFFeK77y16GU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=hVG0HSDA8rE5xmxrpe4VsIiBt3wsvYi6+asdDW1r+DdHlUycVaXdd3/kjxQkbEG1e
 RQx8L6oOTNzvOcDD4TNaH03l7VDseaM0l8ceVPki+QpOBXuyClPIg5ac/Q/pSRWVV0
 ZK9JGt8sKkRmo09xfGYostker5HfHvm6SuS7re2kEjKxqbDc/WV+X7nvplqSiKDL7j
 2hjZ1EZ7dWCsWX/dGFuBZmr6Y6QkkmrWx6qO5jxeCjY/746yANDLjSX0Mi04ar1ZO/
 N/KWL1f6OQERJdteXsAUNOM22dgkGMRz4k7Ivmuqo43Ehs9YuAI5hZ/1IpTw+BGE98
 SIUWJDIqvfC+Q==
Message-ID: <fa40b40d-b599-ec03-b596-57be7017d2c7@collabora.com>
Date: Mon, 4 Apr 2022 11:02:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC PATCH 2/8] media: Add P010 format
Content-Language: en-US
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Greg KH
 <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 linux-media <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
 <20220227144926.3006585-3-jernej.skrabec@gmail.com>
 <1b2ce01fb04f29cca58d40bd81d9f4cc46dcebf8.camel@ndufresne.ca>
 <CAAEAJfCA1ef5+KZHU4ZTJvuqdCAEUkvpDY9HTy1fp3M+0QxqPg@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAAEAJfCA1ef5+KZHU4ZTJvuqdCAEUkvpDY9HTy1fp3M+0QxqPg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_020229_795724_3515DA1A 
X-CRM114-Status: GOOD (  15.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDA0LzA0LzIwMjIgw6AgMDI6MDQsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IE5pY29sYXMsIEJlbmphbWluLAo+Cj4gT24gTW9uLCBGZWIgMjgsIDIwMjIgYXQgOTo0OCBBTSBO
aWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4+IExlIGRpbWFu
Y2hlIDI3IGbDqXZyaWVyIDIwMjIgw6AgMTU6NDkgKzAxMDAsIEplcm5laiBTa3JhYmVjIGEgw6lj
cml0IDoKPj4+IEFkZCBQMDEwIGZvcm1hdCwgd2hpY2ggaXMgY29tbW9ubHkgdXNlZCBmb3IgMTAt
Yml0IHZpZGVvcy4KPj4gVGhlcmUgaXMgYSBtdWNoIG1vcmUgY29tcGxldGUgcGF0Y2ggdGhhdCB3
YXMgc2VudCBwcmV2aW91c2x5ICh3aXRoIGRvY3VtZW50YXRpb24KPj4gYW5kIGFsbCk6Cj4+Cj4+
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRj
aC8yMDIxMDYxODEzMTUyNi41NjY3NjItNS1iZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29t
Lwo+Pgo+IEkgYmVsaWV2ZSAibWVkaWE6IEFkZCBQMDEwIHZpZGVvIGZvcm1hdCIgc2hvdWxkIGJl
IGdvb2QgdG8gZ28sIEkgdGhpbmsKPiB3ZSBjb3VsZCBtZXJnZSBpdC4KPgo+IEkgY2FuJ3QgZmlu
ZCBpdCBvbiBteSBnbWFpbCBpbmJveCwgZm9yIHNvbWUgcmVhc29uLi4gY2FuIHlvdSBndXlzCj4g
cGxlYXNlIHJlcG9zdCBpdCwKPiBhbmQvb3IgcmVwbHkgdG8gd2l0aCBhIGdlbnRseSBwaW5nIGZv
ciBIYW5zIChhbmQgcGxlYXNlIENjIG1lIG9uIHRoaXMgbWFpbCkgPwoKSSBoYXZlIHJlYmFzZWQg
aXQgb24gdjUtMTgtcmMxIHRhZyBhbmQgc2VuZCBpdC4KWW91IHNob3VsZCBoYXZlIGl0IGluIHlv
dXIgbWFpbGJveCBub3cuCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IFRoYW5rcyEKPiBFemVxdWll
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
