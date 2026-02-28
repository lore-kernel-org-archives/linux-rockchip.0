Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8296C1048924
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 00:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrpZGgD+3Oqj52wVCObF4xJXaofII6Lpzs2AEd9lgPk=; b=uj9ezOy/nxDNcj
	P5U/IX0ZlZMvCwOdPAZ01nXUwV48ZZ7CLbc+7T0pep3VvlBN2zA5ICipE3FZ3xGZnMlkfqbWRan9A
	GfBTLBbk5u9e2ZzKkXJhRFfTIWxrEfS0TCtPot8a1mzL6bDrrCnwWY9gpKm8xTuN2F++3uPr6m8KJ
	gUyXu4htt0lZjbZUiF9lmvnhewudLxCvSwncsuuKDz6VbooAHXJ5lFwv/pCR1UuAUjw/+ERfHKK0I
	oevI4ToEELIyn4fSL2PNT0gWt0i46EMXeTPllPF+Eytxmy2TsiT+tmhaIHZI03djpI3TG8nfs69wO
	ct6EKGET0LFqSPYpBKEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw83s-00000009JqS-2coV;
	Sat, 28 Feb 2026 00:20:00 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw83p-00000009Jp8-3qGS;
	Sat, 28 Feb 2026 00:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772237993;
	bh=eEWOJLC5iXka6AARlFgyl+EPvoGlADG4k4kYulrx3Wc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=YG1S4cQCItG4wh33BA/xp5pv5bzJWN7qr+2SrhcDxWdw1eOTsEa0xeOMT981QtdVj
	 LDEbrpqeDNXAa3A1OAI05M1LKnMzVP74y/de7yGLlGybv8g6gTbGLMJE/eWpXUwaFl
	 Xp+GYqK9CWyxjl3FZQ+kGEVpyDf8r0Wa0CM0Xhy64iADAgGEevXUxO/2GWtwfhejJa
	 N7IQmVGUvlsh3fbT2UN3oEg3tWCsqSQBxc5d+RXTYTU36p/aVJV1l+eLJJt1KjUM73
	 BhUhf7F3p5s/8ZRDu4ba6RSlCNs4E2wShG1B9ig1HZSntqeCTa/jxlgnPHLqCxSyQj
	 Sy2rRpetH1djw==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5457D17E0454;
	Sat, 28 Feb 2026 01:19:53 +0100 (CET)
Message-ID: <67adf0fb-707f-4cc9-b394-8627149d8587@collabora.com>
Date: Sat, 28 Feb 2026 02:19:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] HDMI monitor not working on Radxa Rock 5B after phy
 rockchip samsung hdptx HDMI 2.1 FRL patchset
To: dubito@online.de, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, regressions@lists.linux.dev
References: <b32164001947ba922aefb6ca86a8dc59e9323d2b.camel@online.de>
 <8e410a11-bd7b-4a12-a711-0514a59409c0@collabora.com>
 <1859c940219a4dbfdf0497afbf333e627ab0ba25.camel@online.de>
 <98e46dbb-c8e2-451f-accb-ea48f63f9408@collabora.com>
 <4544ec4ccfa49cbdffee098878df7806223935a0.camel@online.de>
 <08369c90-fbab-477d-9ac6-388deddfd3b1@collabora.com>
 <26e31b3b-484f-433b-833f-c639ee437f63@collabora.com>
 <03b5f3d1-6db4-4835-b2a5-c22c1aa63825@collabora.com>
 <a3c3964e9e13c82d944fa1ee0acbb1a7806dd382.camel@online.de>
 <a662745a-1b2a-47b3-a66d-7c1c5c8af525@collabora.com>
 <e18fce6a3216427d26bd10ebd837e9152c0c8b60.camel@online.de>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <e18fce6a3216427d26bd10ebd837e9152c0c8b60.camel@online.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_161958_114016_CDFC2F42 
X-CRM114-Status: UNSURE (   9.38  )
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

SGkgVGhvbWFzLAoKT24gMi8yMS8yNiA1OjA1IFBNLCBUaG9tYXMgTmllZGVycHLDvG0gd3JvdGU6
Cj4gSGkgQ3Jpc3RpYW4sCj4gCj4gQW0gTWl0dHdvY2gsIGRlbSAxOC4wMi4yMDI2IHVtIDIyOjU2
ICswMjAwIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBIaSBUaG9tYXMsCj4+Cj4+IE9u
IDIvMTgvMjYgMTA6NDMgUE0sIDF1bmQxIHdyb3RlOgo+Pj4gSGkgQ3Jpc3RpYW4sCj4+Pgo+Pj4K
Pj4+IEFtIE1pdHR3b2NoLCBkZW0gMTguMDIuMjAyNiB1bSAyMjoxNSArMDIwMCBzY2hyaWViIENy
aXN0aWFuIENpb2NhbHRlYToKPj4+PiBPbiAyLzE4LzI2IDM6MjIgQU0sIENyaXN0aWFuIENpb2Nh
bHRlYSB3cm90ZToKPj4+Pj4gT24gMi8xOC8yNiAyOjUyIEFNLCBDcmlzdGlhbiBDaW9jYWx0ZWEg
d3JvdGU6Cj4+Pj4+PiBIaSBUaG9tYXMsCgpbLi4uXQoKPj4+IGFwcGx5aW5nIHRoZXNlIGNvbW1p
dHMgc29sdmVzIG15IHByb2JsZW1zLiBJIHRlc3RlZCAxOTIweDEwODBANjAsCj4+PiAxOTIweDEw
ODBANTAKPj4+IGFuZCAxOTIweDEwODBAMzAuIEFsbCB3b3JrIG5vdy4gVGhhbmtzIGZvciB0aGUg
cXVpY2sgZml4ISAKPj4KPj4gVGhhbmtzIGZvciB0aGUgcXVpY2sgdGVzdCEKPj4KPj4gSSBjYW4g
YWRkIHlvdSB0byBjYzogd2hlbiBJIHN1Ym1pdCB0aGUgc2VyaWVzLCBzbyB0aGF0IHlvdSBtYXkg
cHJvdmlkZSB5b3VyCj4+IFRlc3RlZC1ieSB0YWcgaWYgeW91J2QgbGlrZSB0by4KPiAKPiBzdXJl
LCBJIHdvdWxkIGJlIGhhcHB5IHRvLgoKSSd2ZSBqdXN0IHJlYWxpemVkIEkgbWlzc2VkIHRvIGFk
ZCB5b3VyIHJlY2lwaWVudCBlbWFpbCB0byB0aGUgc2VyaWVzIFsxXSBzZW50Cm91dCBqdXN0IGEg
ZmV3IGhvdXJzIGFnbyAtIHNvcnJ5IGZvciB0aGF0LiAgSG93ZXZlciwgeW91IGNhbiBmaW5kIHNv
bWUgcmVwbHkKaW5zdHJ1Y3Rpb25zIGF0IHRoZSBib3R0b20gb2YgdGhhdCBwYWdlLCBlLmcuIGlt
cG9ydCB0aGUgbWJveCBpbnRvIHlvdXIgbWFpbApjbGllbnQuCgpQbGVhc2Ugbm90ZSB0aGlzIGlz
IGEgcmV3b3JrZWQgdmVyc2lvbiBvZiB0aGUgaW5pdGlhbCBwYXRjaGVzLCBmaXhpbmcgc29tZQph
ZGRpdGlvbmFsIGlzc3VlcywgaGVuY2UgcmV0ZXN0aW5nIHdvdWxkIGJlIG5lY2Vzc2FyeS4gIEZv
ciBjb252ZW5pZW5jZSwgeW91IG1heQphbHNvIHBpY2sgdGhlc2UgcGF0Y2hlcyBmcm9tIFsyXS4K
ClJlZ2FyZHMsCkNyaXN0aWFuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYw
MjI3LWhkcHR4LWNsay1maXhlcy12MS0wLWY5OThmMjc2MmQwZkBjb2xsYWJvcmEuY29tLwpbMl0g
aHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9jcmlzdGljYy9saW51eC1uZXh0Ly0vY29tbWl0
cy9iNC9oZHB0eC1jbGstZml4ZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
