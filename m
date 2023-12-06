Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3120C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 19:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FCMIfqpKKfhcOhQXZ5v0inUvyB5TOUK+IrbXGhDDZA=; b=xxd4zde8rPAPKQ
	4fFi+xX0lW2L7f/mBmIuK1NGBGZOZvHqBaHQlW9DPRTTug9WH2FNwpmggPAJbYERC6Li5cMLvKQCF
	s4ary5rEfsln/3oFlBoJezameoBCPVLM6EXEAQF8ZLENRnD5IEiactLiKurDD67nmF3n8QldjwFJZ
	jfY/0HNK19R0tzsPMtBd1u2oVoo6Rip83yYaaZgCrJuhq8nKtYHDsjTijqPD/hwjWEk5KpgCzqO4N
	0y4MvaZn5K+SpZ+ASjhZcwuW4B3sCeFuAsrmGKJu+cz8sKA8IDNSXa9gM+irZcOXGyfFLXEeC09dE
	FSGGLyLxTSdX54Ob5Xbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAxnF-00B94a-13;
	Wed, 06 Dec 2023 19:42:49 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAxnB-00B93s-0W;
	Wed, 06 Dec 2023 19:42:46 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-7b373d61694so5692839f.2;
        Wed, 06 Dec 2023 11:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701891763; x=1702496563; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MD7rQumZcxtfQXGF4yVw2sbuVFtWw0Ym2PO4K4QsjTg=;
        b=Nm4g8XGK8XKBFw+SiRk+w2EMtb7L/iD5h8AEQCq9QKAyqXCyvQhphTj5Kg46RHZO3L
         0uphcHpBuFdBHs6N7elZk4G7tIzdzy1rtBlwGQyekxuUrPWRnnbZuzniZI0KlIjzTgpe
         OXYc/ncR3Igqinx2YrpielJ5vvmTCLAIQCTKnf5Odg2G5Yrj96HxmFuea6Zv4ZbPoXyM
         XWWTyzq7Jo8YY6OP9ojE8qovSy+ooh9bJNr22DO5jhkquehwT+h07PlrlnwmDY7NGX+q
         AhqiIpKazJgR4xa3G+UEgRu9vcpTo44unOKDPmp7zXTDjcMGyoVQ4efKSd7sMH+zBkxL
         iEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701891763; x=1702496563;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MD7rQumZcxtfQXGF4yVw2sbuVFtWw0Ym2PO4K4QsjTg=;
        b=dVWFM5LRtFONmiCwutj+/kmdwOAq5Ty7KgzzLZNK7jy/s83b1cv8x64drY4UEwE8rT
         KqlURj0f2C+G5VptrbXDojRjrgN+eU5RaH4V7RrqQqeSZ5PtU/0l0NiREkOa7dKOI0e/
         R5BuQ1PIi4fPq1D5mg0l3aPKtAgFgj8/3ogzvUWXUpDS3AVNaLj+047T+V/v9pGs7/Vb
         6mU/CprNTGeyfVv1qteqXNa06ddBDIhlxvFQcigpuUNHvdVf9PmXNY8OkBGRFdwFPFI/
         DPZQcKAP5CvmPpUYeP4r15YbtYgseEz8alS84v8hRAN7VeWx0jmhwJ3aQo1JGJhUaEcm
         5vIw==
X-Gm-Message-State: AOJu0YwamDry3z4pka9UzRx2/xEmA6CZ+ybOUMMVUzXq7s9CH3VRPXQK
	/ll3vrPSUgYJd0rlgrqDOYA=
X-Google-Smtp-Source: AGHT+IGZKyCQ3/0gK/XWj3RkOsj/pO3uQPcIUsLAQq0XmhC1y14umof2h15amr7/e/JU6bQMY+L/yg==
X-Received: by 2002:a05:6602:1249:b0:7b4:28f8:2bfe with SMTP id o9-20020a056602124900b007b428f82bfemr1737479iou.39.1701891760323;
        Wed, 06 Dec 2023 11:42:40 -0800 (PST)
Received: from ?IPV6:2001:470:42c4:101:3fb7:1e39:b284:286f? ([2001:470:42c4:101:3fb7:1e39:b284:286f])
        by smtp.gmail.com with ESMTPSA id x14-20020a056638010e00b0042b2f0b77aasm106476jao.95.2023.12.06.11.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 11:42:39 -0800 (PST)
Message-ID: <b188d02d-7bca-0f1e-bf83-e04e7a4330ea@gmail.com>
Date: Wed, 6 Dec 2023 12:42:33 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RESEND PATCH] arm64: dts: rockchip: Add PCIe pinctrls to Turing
 RK1
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Daniel_Kukie=c5=82a?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
References: <20231205202900.4617-1-CFSworks@gmail.com>
 <2724771.ElGaqSPkdT@diego>
From: Sam Edwards <cfsworks@gmail.com>
In-Reply-To: <2724771.ElGaqSPkdT@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_114245_201222_FFF20E7C 
X-CRM114-Status: GOOD (  20.88  )
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

CgpPbiAxMi82LzIzIDAyOjM1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBEaWVuc3RhZywg
NS4gRGV6ZW1iZXIgMjAyMywgMjE6Mjg6NTkgQ0VUIHNjaHJpZWIgU2FtIEVkd2FyZHM6Cj4+IFRo
ZSBSSzM1ODggUENJZSAzLjAgY29udHJvbGxlciBzZWVtcyB0byBoYXZlIHVucHJlZGljdGFibGUg
YmVoYXZpb3Igd2hlbgo+PiBubyBDTEtSRVEvUEVSU1QvV0FLRSBwaW5zIGFyZSBjb25maWd1cmVk
IGluIHRoZSBwaW5tdXguIEluIHBhcnRpY3VsYXIsIGl0Cj4+IHdpbGwgc29tZXRpbWVzICh2YXJ5
aW5nIGJldHdlZW4gc3BlY2lmaWMgUkszNTg4IGNoaXBzLCBub3Qgb3ZlciB0aW1lKSBzaHV0Cj4+
IG9mZiB0aGUgREJJIGJsb2NrLCBhbmQgcmVhZHMgdG8gdGhpcyByYW5nZSB3aWxsIGluc3RlYWQg
c3RhbGwKPj4gaW5kZWZpbml0ZWx5Lgo+Pgo+PiBXaGVuIHRoaXMgaGFwcGVucywgaXQgd2lsbCBw
cmV2ZW50IExpbnV4IGZyb20gYm9vdGluZyBhbHRvZ2V0aGVyLiBUaGUKPj4gUENJZSBkcml2ZXIg
d2lsbCBzdGFsbCB0aGUgQ1BVIGNvcmUgb25jZSBpdCBhdHRlbXB0cyB0byByZWFkIHRoZSB2ZXJz
aW9uCj4+IGluZm9ybWF0aW9uIGZyb20gdGhlIERCSSByYW5nZS4KPj4KPj4gRml4IHRoaXMgYm9v
dCBoYW5nIGJ5IGFkZGluZyB0aGUgY29ycmVjdCBwaW5jdHJsIGNvbmZpZ3VyYXRpb24gdG8gdGhl
Cj4+IFBDSWUgMy4wIGRldmljZSBub2RlLCB3aGljaCBpcyB0aGUgcHJvcGVyIHRoaW5nIHRvIGRv
IGFueXdheS4gV2hpbGUKPj4gd2UncmUgYXQgaXQsIGFsc28gYWRkIHRoZSBuZWNlc3NhcnkgY29u
ZmlndXJhdGlvbiB0byB0aGUgUENJZSAyLjAgbm9kZSwKPj4gd2hpY2ggbWF5IG9yIG1heSBub3Qg
Zml4IHRoZSBlcXVpdmFsZW50IHByb2JsZW0gb3ZlciB0aGVyZSAtLSBidXQgaXMgdGhlCj4+IHBy
b3BlciB0aGluZyB0byBkbyBhbnl3YXkuIDopCj4+Cj4+IEZpeGVzOiAyODA2YTY5ZjNmZWY2ICgi
YXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBUdXJpbmcgUksxIFNvTSBzdXBwb3J0IikKPj4gU2ln
bmVkLW9mZi1ieTogU2FtIEVkd2FyZHMgPENGU3dvcmtzQGdtYWlsLmNvbT4KPj4gLS0tCj4+ICAg
Li4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsxLmR0c2kgfCAxNCAr
Ky0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEyIGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtdHVyaW5nLXJrMS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtdHVyaW5nLXJrMS5kdHNpCj4+IGluZGV4IDk1NzBiMzRhY2EyZS4uMTI5ZjE0ZGJkNDJm
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJp
bmctcmsxLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
dHVyaW5nLXJrMS5kdHNpCj4+IEBAIC0yMTQsNyArMjE0LDcgQEAgcmdtaWlfcGh5OiBldGhlcm5l
dC1waHlAMSB7Cj4+ICAgJnBjaWUyeDFsMSB7Cj4+ICAgCWxpbnV4LHBjaS1kb21haW4gPSA8MT47
Cj4+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0JcGluY3RybC0wID0gPCZwY2ll
Ml9yZXNldD47Cj4+ICsJcGluY3RybC0wID0gPCZwY2llMzB4MW0xX3BpbnM+Owo+IAo+IFRoaXMg
cmVhbGx5IHRocm93cyBtZSBmb3IgYSBsb29wIGhlcmUgLSBpbiB0aGUgb3JpZ2luYWwgc3VibWlz
c2lvbiB0b28KPiBhbHJlYWR5LiBCZWNhdXNlIHNvbWVob3cgdGhvc2UgcGlucyBhcmUgbmFtZWQg
cGNpZTMweDEuLi4gZm9yIHRoZQo+IHBjaWUyIGNvbnRyb2xsZXIgOy0pIC4KCkhpIEhlaWtvLAoK
SSBqdXN0IGRvdWJsZS1jaGVja2VkLiBUaGUgUksxJ3MgUENJZSAyLjAgeDEgaGFzIHRoZSBmb2xs
b3dpbmcgcGluIAphc3NpZ25tZW50czoKUENJRTFfQ0xLUkVRX04gLT4gQUszMCAoNCBSS19QQTAp
ClBDSUVfV0FLRSAoc2hhcmVkIHdpdGggUENJRTAgd2FrZSBzaWduYWwpIC0+IEFMMzAgKDQgUktf
UEExKQpQQ0lFMV9SU1RfTiAtPiBBTTI5ICg0IFJLX1BBMikKCi4uLnNvIHRoZSBwYXRjaCdzIHBp
bm11eCBzZXR0aW5nIGlzIGluZGVlZCBjb3JyZWN0LiAoQnV0IHdlIG1heSBzdGlsbCAKd2FudCB0
byBkcm9wIHRoZSBgcmVzZXQtZ3Bpb3NgIHByb3BlcnR5OyBzZWUgbXkgcmVwbHkgdG8geW91ciBv
dGhlciBlbWFpbC4pCgpUaGUgY29uZnVzaW9uIHNlZW1zIHRvIGJlIHRoYXQgdGhlIFBDSWUgMi4w
IHBhdGggdXNlZCBoZXJlIGlzOgpQQ0llMzBYMV8xKDFMMSkgLT4gQ29tYm8gUElQRSBQSFkyCihT
bywgYSBQQ0llMyBjb250cm9sbGVyLCBidXQgYSBQQ0llMiBQSFkuKQoKVGhlIFdBS0UvQ0xLUkVR
L1BFUlNUIHNpZ25hbHMgYXJlIHZlcnkgbG93LXNwZWVkLCBhbmQgdGh1cyBieXBhc3MgdGhlIApQ
SFk6IHRoZSBSSzM1ODgncyBJT01VWCBzdWJzeXN0ZW0gY29ubmVjdHMgdGhlbSBkaXJlY3RseSB0
byB0aGUgUENJZTMgCmNvbnRyb2xsZXIuIFNvIHRoZXkgYXJlICJwY2llMzAiIHBpbnMgaW4gdGhh
dCBzZW5zZS4KClRoZSAocG90ZW50aWFsKSBtaXNub21lciBoZXJlIGlzIGBwY2llMngxbDFgLiBU
aGUgY29udHJvbGxlciBhdCAKMHhGRTE4MDAwMCBpcyB1bmVxdWl2b2NhbGx5IGEgUENJZSAzLjAg
Y29yZSwgYW5kIGl0ICpjb3VsZCogYmUgbXV4ZWQgdG8gCmEgKGJpZnVyY2F0ZWQpIFBDSWUgMy4w
IHgyIFBIWSBmb3IgdHJ1ZSBQQ0llIDMuMCBvcGVyYXRpb24uIEJ1dCBzaW5jZSBpdCAKYXBwZWFy
cyB0aGF0IG1haW5saW5lIGRvZXNuJ3Qgc3VwcG9ydCB0aGlzIGJpZnVyY2F0aW9uICh5ZXQpLCB0
aGlzIFBDSWUgCjMuMCBjb3JlIGNhbiBvbmx5IGJlIHVzZWQgZm9yIFBDSWUgMi4wIHRocm91Z2gg
Y29tYnBoeTIsIHdoaWNoIGlzIApwcm9iYWJseSB3aHkgdGhlIERUIG5vZGUgaXMgbGFiZWxlZCBg
cGNpZTJ4MWwxYCAoZm9yIG5vdykuCgpJbiBhbnkgY2FzZSwgdGhhbmsgeW91IGZvciBjYWxsaW5n
IGF0dGVudGlvbiB0byB0aGlzISBJIGVuam95ZWQgCnJlc2VhcmNoaW5nIHRoZSAid2h5IiBhbmQg
aG9wZSB0aGF0IGl0IGNsYXJpZmllcyB0aGluZ3MgZm9yIHlvdSBhcyB3ZWxsLiA6KQoKQ2hlZXJz
LApTYW0KCj4gCj4gCj4+ICAgCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQTIgR1BJT19BQ1RJ
VkVfSElHSD47Cj4+ICAgCXN0YXR1cyA9ICJva2F5IjsKPj4gICB9Owo+PiBAQCAtMjI2LDcgKzIy
Niw3IEBAICZwY2llMzBwaHkgewo+PiAgICZwY2llM3g0IHsKPj4gICAJbGludXgscGNpLWRvbWFp
biA9IDwwPjsKPj4gICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gLQlwaW5jdHJsLTAg
PSA8JnBjaWUzX3Jlc2V0PjsKPj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUzMHg0bTFfcGlucz47Cj4+
ICAgCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQjYgR1BJT19BQ1RJVkVfSElHSD47Cj4+ICAg
CXZwY2llM3YzLXN1cHBseSA9IDwmdmNjM3YzX3BjaWUzMD47Cj4+ICAgCXN0YXR1cyA9ICJva2F5
IjsKPj4gQEAgLTI0NSwxNyArMjQ1LDcgQEAgaHltODU2M19pbnQ6IGh5bTg1NjMtaW50IHsKPj4g
ICAJCX07Cj4+ICAgCX07Cj4+ICAgCj4+IC0JcGNpZTIgewo+PiAtCQlwY2llMl9yZXNldDogcGNp
ZTItcmVzZXQgewo+PiAtCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BBMiBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF9ub25lPjsKPj4gLQkJfTsKPj4gLQl9Owo+PiAtCj4+ICAgCXBjaWUzIHsKPj4g
LQkJcGNpZTNfcmVzZXQ6IHBjaWUzLXJlc2V0IHsKPj4gLQkJCXJvY2tjaGlwLHBpbnMgPSA8NCBS
S19QQjYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+IC0JCX07Cj4+IC0KPj4gICAJ
CXZjYzN2M19wY2llMzBfZW46IHBjaWUzLXJlZyB7Cj4+ICAgCQkJcm9ja2NoaXAscGlucyA9IDwy
IFJLX1BDNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4gICAJCX07Cj4+Cj4gCj4g
Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
