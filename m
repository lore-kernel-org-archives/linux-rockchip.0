Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF344C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 14:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pX3Xf36DT872tHc3FJ4kuj+X7Kp8KDpDe81+Hd0GIb8=; b=Cq8Rm4+WOda+56
	9aEeSevy8aQ9FQn9TW64gAanGUp4mE2r6Rlw0EAmXsfhWXElxZ3qabI9ZA+R77nAfmy7dw/xaf4WJ
	D54PBpHz6khe9RXXyXn5Kih8U+m+4FtwGh2b0PDkmg5a+wfeN6S/lhRNxGYJQqjFlbln4T1neC3VD
	LC0IuKerjzWADQ8T2zgn0vEDHneH2JQQQD6kwf63PFNHO+zT6gIIMAnF4xKxEKBTq3mx3NutuN/qo
	MsgJmhkGWcXETkWxraGfADMo1nE2+uqmEPeGrGyx8Za6pWgTi6QJdzsnGd115KR0eHC9Y+T22kqAP
	od7gFsrILptiz6cytUBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pezia-00GMAi-1L;
	Wed, 22 Mar 2023 14:45:36 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peziX-00GM8n-0j
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Mar 2023 14:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1679496324; i=markus.elfring@web.de;
	bh=j7CBFHhkThEj2vkZLTBrcS+gCBQgUDVjaqXmMJyUbrU=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
	b=CN+O1t/aEuBKXqs9lzYLWScXYTTsjnQ3ZUEDRzQ1tq5ReklFX579wiva9Ikqoky9o
	 QV5X5NHyGaxlWTDoro45FcLaVD6r+ODCtujBuobGsrWLYKxYes+26IVqXg71ah0NTT
	 lSGpdyR4VdhOlxwC9gAW4/nl0g1O4BtY1XqvkPfQ3YzEVuA5BOOYObP/wiLhwPlHY6
	 FawUPQ8hsg46F+w+e8E809AgqPzJ7es9CNHp8d0JmKdTNv8pIUhU+2NMeEKi+IFruV
	 5+2saU9f1U9Mw0ZcicWE2FyYuKWPBANYhInhItzx3TQuhTVGBk3rYf46Ub0b+xvghT
	 8cI0kBO4Y0ovQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.81.83]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MLifk-1pwf7k194i-00HmZ2; Wed, 22
 Mar 2023 15:45:24 +0100
Message-ID: <ea112fdd-7af0-d1f1-442c-306e6ec54a5b@web.de>
Date: Wed, 22 Mar 2023 15:45:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] media: hantro: HEVC: Fix exception handling in
 tile_buffer_reallocate()
Content-Language: en-GB
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 kernel-janitors@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Adrian Ratiu
 <adrian.ratiu@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: cocci@inria.fr, LKML <linux-kernel@vger.kernel.org>
References: <f9303bdc-b1a7-be5e-56c6-dfa8232b8b55@web.de>
 <e3aaeecf-8e74-2e74-c58a-d80e153e98f9@web.de>
 <5d5c8c7b-b926-8397-7994-623ac9b37e83@collabora.com>
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <5d5c8c7b-b926-8397-7994-623ac9b37e83@collabora.com>
X-Provags-ID: V03:K1:HTLH6hwZcOtQE0Jx1xZMn5Mg8ZiEE1Rqd2aWsdKY3bk4KgH53ES
 0M6LzJO48gNIuQEiCZc+u3Jw7dhomNTX4c4oGRmsmTEjqzB/ETIJeotYMpGMiqDyPEPqyKK
 w7J8oAoqOCfJALXvMgo0tGpUwMAU9R8mhnnXWvAG6urhnU8inaDVRBC7s8bOFpav5WHPFF0
 xzUZPPKboggd+TFDEUu4g==
UI-OutboundReport: notjunk:1;M01:P0:6YDjGxqN3c0=;9voaMO/gi6TzlekQ9SBC2alyGZ1
 zAtXKklrbVZrJ1sahr9sGOFHinfwdxbr28X284XIqlXcKCGjo25z5XNw7iVxkoAM23jVFRGQF
 o+2vlGtxAGlVnY19UjInGzg4d7iKdSTY7iTLitw7uOfPUyBm9F8hudm2BVwRKnKCra23jxioz
 yonTcJoziMDuyPFsY858bTjINxWYzO18N2jJBDHu46jJAPRHP9+VLaeBWXkKYNDAB/ecVBw7M
 48lnhh6JUBmDpu4tEIxjObNUeGZUfOSe2LackxBYQbX7T9TgvxkmSSP72+cEhtEQZIgPyFx9C
 kdoCevNwB8JFzoxjDTeNJKKbpmr6S41LDkhelwuvu/A9r4/tvOnHUvh9tFDI8uBBAsZ1pjFyQ
 Lr/H7AUJTEXm7/8SBc8mLojpfDI6tZEjhy5rnjZX7hbNTWX5c9rwu9rBr0r2VUawSjV2+en5L
 CWBz6orrYSfWg8LR8UIjQkYo3Jd90Mzba66IGfEd4zzn2n6++0bfUxZv4bxx5AqyXOzk4UtuZ
 gdyjRh8xovyMccbkCPPBhu0smCS5W131J7ADWw3nRamOhm8Y3euzKrwORxhf5FmIJbdBzm5Ls
 wlZYxwOPdXkSGePr3AkuUS3OgFnMz8N3KuP0HYkc5m2GJFV+77yugqkyHQADzSd46Cai0NKi1
 BCecPwA3iQCkC9NFOEOaQndKzZbzIkpDG2oeb0UIyzGgNGbOWr3YQCNKx8FLUBwYXhAzq0KLH
 DJmhRhVSumZ3kjxXFH9aOc8vGHTEm9i/t8AS9eGovfQ8hmreZ3nPzYiM2kGuXNJzr0jlo2ASK
 Zhj4XDf2KKcp4jMLqkoZ8lOXzTpzM82g3xVCgoFqgvgq7rxOY3Q4A+2AY52cT/c/frIchzot7
 yBr+DKds7Ze6fQYDRl6RAmwHX2jJBVaNP7pqro13nhiWaB9vmcOyj3DaE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_074533_737571_C6EC4791 
X-CRM114-Status: GOOD (  11.34  )
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

Cj4+IFRoZSBsYWJlbCDigJxlcnJfZnJlZV90aWxlX2J1ZmZlcnPigJ0gd2FzIHVzZWQgdG8ganVt
cCB0byBhbm90aGVyIHBvaW50ZXIKPj4gY2hlY2sgZGVzcGl0ZSBvZiB0aGUgZGV0YWlsIGluIHRo
ZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgZnVuY3Rpb24KPj4g4oCcdGlsZV9idWZmZXJfcmVhbGxv
Y2F0ZeKAnSB0aGF0IGl0IHdhcyBkZXRlcm1pbmVkIGFscmVhZHkgdGhhdAo+PiBhIGNvcnJlc3Bv
bmRpbmcgdmFyaWFibGUgY29udGFpbmVkIGEgbnVsbCBwb2ludGVyIGJlY2F1c2Ugb2YgYSBmYWls
ZWQKPj4gZnVuY3Rpb24gY2FsbCDigJxkbWFfYWxsb2NfY29oZXJlbnTigJ0uCj4+Cj4+ICogVGh1
cyB1c2UgYW4gYWRkaXRpb25hbCBsYWJlbCBpbnN0ZWFkLgo+Pgo+PiAqIERlbGV0ZSBhIHJlZHVu
ZGFudCBjaGVjay4KPj4KPj4KPj4gVGhpcyBpc3N1ZSB3YXMgZGV0ZWN0ZWQgYnkgdXNpbmcgdGhl
IENvY2NpbmVsbGUgc29mdHdhcmUuCj4KPiBJZiB5b3Ugd2FudCB0byBvcHRpbWl6ZSB0aGUgZXJy
b3IgcGF0aAoKSSB3b3VsZCBmaW5kIGl0IG5pY2UgaWYgbW9yZSBjb250cmlidXRvcnMgY2FuIHBp
Y2sgc3VjaCBhbiBpZGVhIHVwLgoKCj4gSSB0aGluayB0aGUgYmVzdCBvcHRpb24gaXMgdG8gcmV0
dXJuIC1FTk9NRU0gd2hlbiBoZXZjX2RlYy0+dGlsZV9maWx0ZXIuY3B1IGlzIE5VTEwsCj4gcmVt
b3ZlCj4gwqDCoMKgwqBpZiAoaGV2Y19kZWMtPnRpbGVfYnNkLmNwdSkKPiDCoMKgwqDCoMKgwqDC
oCBkbWFfZnJlZV9jb2hlcmVudCh2cHUtPmRldiwgaGV2Y19kZWMtPnRpbGVfYnNkLnNpemUsCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZXZjX2RlYy0+dGlsZV9ic2QuY3B1
LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGV2Y19kZWMtPnRpbGVfYnNk
LmRtYSk7Cj4gYW5kIHJlb3JkZXIgdGhlIHR3byBvdGhlciBkbWFfZnJlZSB0byBnZXQgc29tZXRo
aW5nIGNsZWFuLgoKSXQgc2VlbXMgdGhhdCBteSB1bmRlcnN0YW5kaW5nIHdhcyB0b28gbGltaXRl
ZCBzbyBmYXIgZm9yIHBvc3NpYmxlIGltcHJvdmVtZW50cwpvZiB0aGlzIGZ1bmN0aW9uIGltcGxl
bWVudGF0aW9uLgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19oZXZjLmM/aWQ9YTFlZmZhYjdhM2EzNWE4MzdkZDlkMmI5NzRhMWJjNDkzOWRm
MWFkNSNuNzAKCldvdWxkIHlvdSBsaWtlIHRvIGFwcGx5IGFueSBvdGhlciBkZXNpZ24gdmFyaWFu
dD8KClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
