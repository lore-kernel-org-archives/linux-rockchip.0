Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22FDDC53210
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jan 2023 13:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wDosCNYofVdlb6F52IyJjugDvDKSXmapNHfnmXRLu4=; b=xoC3L2D/rA+Mol
	H5ANshji609kK0jPNazsKUcq1qx8eMK761Bh2N1xc8XIubHNuJs4hOknDNIU3ZV1kZQN6JFvG9Yv5
	pFoNtXsJRAxwzxGi/EHQk+Uj9vmKf9oPYotw3ijYuqhv269iHAM2Dzhs7716TrJvKDUmZLh7+0LmK
	OL41BE8XW+q5PH679Zj1bOBpfssD5Hgcob9db25dzDorp5g+xRSynLR7uB3CH6rkLFNL8Q0c97xWg
	ccoJElRhrSuSLEUmOCCe32MQxLEhp6bbdGHlj7C07tGLOaWckel1qRCYdem8j9O02Wv/FzWRH/MZH
	dJohoBheYGqW5ox8f4Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCKxR-00BZKB-PE; Mon, 02 Jan 2023 13:34:29 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCKxE-00BZHP-H1
	for linux-rockchip@lists.infradead.org; Mon, 02 Jan 2023 13:34:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672666455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tCriltrcTbc5YIVSa0BHW32yRPYzJxluA5nPgL3tKiE=;
	b=gkS5naWWrvo8M6QvXJxznRBAlmb45wqpa0X3Muu8oC3meO5PjzOiALYQKIchL3Jz05bmdb
	8D/nI59g0MmxOEbyqydpZYX68y85ZwT+A7zawYzV8Qgn2W5d8jcBsGuRykpjtiP+l7WC6D
	gcqxVUvjCgWSgDR01qIgx7HWbk3QMxs=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-400-m7IlS61EPIOTF_1W62vqhA-1; Mon, 02 Jan 2023 08:34:14 -0500
X-MC-Unique: m7IlS61EPIOTF_1W62vqhA-1
Received: by mail-wm1-f69.google.com with SMTP id m8-20020a05600c3b0800b003d96bdce12fso13391389wms.9
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Jan 2023 05:34:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tCriltrcTbc5YIVSa0BHW32yRPYzJxluA5nPgL3tKiE=;
        b=Rpf6Z7f93ELht7crAkVgfWZshhQFOXExj0ysmqLRoOyeh+FxzTyixMPE049N80pN9p
         XsYJIP+ye8V7mCCmo7vDtw7d3Cu+vCxNWLbwrEv291K+jJXPovyPius8fKK6g50gFY11
         wikYHE/F8hJllZbd+u4DD2j1aafOxx+gQZxevdzeWukAxn5AwIyvIUd0QOsWcYn6gOC4
         QEKJvv/uQfcf66XBTOFYgpiWnmXS7W1JuiS8ZpzNMFqt8SquwjzG32WQFvFFAGZxYchB
         ZmjLzyWim51J0YCrAdMUt+f5rH8Vun8RUT2ss3ADWByDv79qY0iCrmGFq2oiIwoA6TTY
         /c4g==
X-Gm-Message-State: AFqh2kq5wYvIat4vaBM1eFaDQXyl+gvT3HikdsR14ujdE6iMKdyN7wjp
	e1ZKiriyWve/7cUdtyc1LFui4OIeZR41z2drF/X6fmZydb3aX/FxQ6b7kJt9lVQGLkhQ/r3qDDH
	bGcyvoVj0Fs2CQWZLyXoFph7AJBmd0Bd0
X-Received: by 2002:a05:600c:3b93:b0:3d3:43ae:4d10 with SMTP id n19-20020a05600c3b9300b003d343ae4d10mr31041974wms.11.1672666453425;
        Mon, 02 Jan 2023 05:34:13 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtJsQ0zRfWCnBj9Diguj19m7NsXFU8c60IxEYqu+ZWPJlj1r+wIED4OsIh+G7deGWpzLHHV5Q==
X-Received: by 2002:a05:600c:3b93:b0:3d3:43ae:4d10 with SMTP id n19-20020a05600c3b9300b003d343ae4d10mr31041948wms.11.1672666453156;
        Mon, 02 Jan 2023 05:34:13 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n1-20020a05600c4f8100b003d96b8e9bcasm41802230wmq.32.2023.01.02.05.34.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 05:34:12 -0800 (PST)
Message-ID: <6319a8b4-1152-40d8-29f1-015a8c5247f4@redhat.com>
Date: Mon, 2 Jan 2023 14:34:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
To: =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megi@xff.cz>,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Kamil_Trzci=c5=84ski?=
 <ayufan@ayufan.eu>, Martijn Braam <martijn@brixit.nl>,
 Sam Ravnborg <sam@ravnborg.org>, Robert Mader <robert.mader@posteo.de>,
 Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 Peter Robinson <pbrobinson@gmail.com>,
 Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
 dri-devel@lists.freedesktop.org, Maya Matuszczyk <maccraft123mc@gmail.com>,
 Neal Gompa <ngompa13@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Caleb Connolly
 <kc@postmarketos.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20221230113155.3430142-1-javierm@redhat.com>
 <20221230113155.3430142-5-javierm@redhat.com>
 <20221230153745.tfs6n4zy4xfwugbw@core>
 <e21b5c12-0cc0-5ec0-b2c6-9dde633d5e10@redhat.com>
 <20230102105746.5abnjzwf365c6hy2@core>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20230102105746.5abnjzwf365c6hy2@core>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_053416_702547_0AE4F884 
X-CRM114-Status: GOOD (  28.26  )
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

SGVsbG8gT25kxZllaiwKCk9uIDEvMi8yMyAxMTo1NywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cgpb
Li4uXQoKPj4KPj4gWW91IHRlbGwgbWUsIGl0IGlzIHlvdXIgcGF0Y2ggOikgSSBqdXN0IGNoZXJy
eS1waWNrZWQgdGhpcyBmcm9tIHlvdXIgdHJlZToKPiAKPiBJIGhhdmUgb3RoZXIgcGF0Y2hlcyB0
byBnb29kaXggZHJpdmVyIHRoYXQgZG8gcG93ZXIgb2ZmIHRoZSB0b3VjaCBzZW5zb3IgY2hpcAo+
IGR1cmluZyBzbGVlcCwgc28gdGhhdCBpdCBkb2Vzbid0IGNvbnN1bWUgZXhjZXNzaW52ZSBhbW91
bnRzIG9mIHBvd2VyIHdoZW4KPiB0aGUgcGhvbmUgaXMgc3VzcGVuZGVkLiBNYWlubGluZSBkb2Vz
bid0LiBZb3UgaGF2ZSB0byBhZGFwdCB0aGlzIHRvIG1haW5saW5lLAo+IGJlY2F1c2UgeW91J3Jl
IG5vdCB1cHN0cmVhbWluZyB0aGUgcmVxdWlyZWQgR29vZGl4IHBhdGNoZXMsIGZvciByZWd1bGF0
b3Itb2ZmLWluLXN1c3BlbmQKPiB0byBub3QgYnJlYWsgdGhpbmdzLgo+IAo+PiBodHRwczovL2dp
dGh1Yi5jb20vbWVnb3VzL2xpbnV4L2NvbW1pdC8xMWY4ZGE2MGQ2YTUKPj4KPj4gQnV0IGlmIHRo
YXQgaXMgbm90IGNvcnJlY3QsIHRoZW4gSSBjYW4gZHJvcCB0aGUgcmVndWxhdG9yLW9mZi1pbi1z
dXNwZW5kLgo+PgoKQWgsIEkgc2VlLiBNaXNzZWQgdGhhdC4gVGhlbiBJIGd1ZXNzIHRoYXQncyBi
ZXR0ZXIgdG8gZHJvcCB0aGUgcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kCnVudGlsIHRoZSBnb29k
aXggZHJpdmVyIHBhdGNoZXMgYXJlIHVwc3RyZWFtZWQuCgo+PiBbLi4uXQo+Pgo+Pj4+ICsKPj4+
PiArCXRvdWNoc2NyZWVuQDE0IHsKPj4+PiArCQljb21wYXRpYmxlID0gImdvb2RpeCxndDkxN3Mi
Owo+Pj4KPj4+IFRoaXMgaXMgbm90IHRoZSBjb3JyZWN0IGNvbXBhdGlibGUuIFBpbmVwaG9uZSBQ
cm8gdXNlcyBHb29kaXggR1QxMTU4Ogo+Pj4KPj4+IEdvb2RpeC1UUyAzLTAwMTQ6IElEIDExNTgs
IHZlcnNpb246IDAxMDAKPj4+IEdvb2RpeC1UUyAzLTAwMTQ6IERpcmVjdCBmaXJtd2FyZSBsb2Fk
IGZvciBnb29kaXhfMTE1OF9jZmcuYmluIGZhaWxlZCB3aXRoIGVycm9yIC0yCj4+Pgo+Pj4KPj4K
Pj4gU2FtZSB0aGluZy4gSSB3YXNuJ3QgYXdhcmUgb2YgdGhpcyBzaW5jZSB5b3VyIHBhdGNoIHdh
cyB1c2luZyB0aGlzIGNvbXBhdGlibGUKPj4gc3RyaW5nLiBJZiAiZ29vZGl4LGd0MTE1OCIgaXMg
dGhlIGNvcnJlY3QgY29tcGF0aWJsZSBzdHJpbmcsIHRoZW4gSSBhZ3JlZSB3ZQo+PiBzaG91bGQg
aGF2ZSB0aGF0IGluc3RlYWQgZXZlbiB3aGVuIHRoZSBmaXJtd2FyZSBpcyBtaXNzaW5nLiBCZWNh
dXNlIHRoZSBEVCBpcwo+PiBzdXBwb3NlZCB0byBkZXNjcmliZSB0aGUgaGFyZHdhcmUuIFRoZSBG
VyBpc3N1ZSBjYW4gYmUgdGFja2xlZCBhcyBhIGZvbGxvdy11cC4KPj4KPj4gWy4uLl0gCj4gCj4g
WWVzLCBjb21wYXRpYmxlIHN0cmluZyBpcyBzb3J0IG9mIGlycmVsZXZhbnQsIGJlY2F1c2UgdGhl
IGRyaXZlciBkb2VzIHJ1bnRpbWUKPiBhdXRvLWRldGVjdGlvbiBiYXNlZCBvbiBjaGlwIElELiBJ
IGRpZG4ndCBib3RoZXIgd2l0aCBzdXBlcmZpY2lhbCBpc3N1ZXMgaW4gdGhlCj4gb3JpZ2luYWwg
Y29kZSBmcm9tIE1hcnRpam4vS2FtaWwuIE5vdyB0aGF0IHlvdSdyZSBtYWlubGluaW5nIHRoZSBj
b2RlLCB0aGlzCj4gc2hvdWxkIGJlIHNvcnRlZCBvdXQsIHRob3VnaC4KPiAKPiBUaGVyZSdzIG5v
IEZXIGlzc3VlLCBJIHdhcyBqdXN0IHVzaW5nIHRoZSBsb2cgdG8gc2hvdyB5b3UgdGhlIGFjdHVh
bCBjaGlwIElEIHRoZQo+IGRyaXZlciBkZXRlY3RzLgo+CgpHb3RjaGEuCiAKPiAoWW91IHNob3Vs
ZCBwcm9iYWJseSBwdXQgbXkgU29CIGFmdGVyIEthbWlsL01hcnRpam4sIHNpbmNlIEkgdG9vayB0
aGUKPiBtYWludGVuYW5jZS9kZXZlbG9wbWVudCBvZiB0aGUgZHJpdmVyIGFmdGVyIHRoZXkgd3Jv
dGUgdGhlIGJhc2Ugc3VwcG9ydAo+IGluaXRpYWxseSBpbiBzZWNyZXQuIEknbSBub3QgdGhlIG9y
aWdpbmFsIGF1dGhvciBvZiB0aGUgY29kZS4pCj4KCkkgd2Fzbid0IGF3YXJlIG9mIHRoYXQuIEkg
anVzdCBrZXB0IHRoZSBhdXRob3IgZmllbGQgYXMgaXQncyBpbiB5b3VyIHRyZWUuCiAKWy4uLl0K
Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9tZWdvdXMvbGludXgvY29tbWl0L2YxOWNlN2JiN2Q3Mgo+
IAo+IFllcywgYW5kIHRlc3QgdGhlIGRyaXZlciBtb3JlIHRob3JvdWdobHk6Cj4gCj4gLSBsb29r
IGF0IGNsa19zdW1tYXJ5IHRvIHZlcmlmeSBjbG9jayByYXRlIHRoZSBrZXJuZWwgdGhpbmtzIGl0
J3MgdXNpbmcKPiAtIHRlc3QgcmVmcmVzaCByYXRlLCBzb21laG93LCB0byBhZ2FpbiB2ZXJpZnkg
dGhlIGFjdHVhbCBjbG9jayByYXRlIChrZXJuZWwgY2FuCj4gICBsaWUgaW4gZGVidWdmcykKPiAt
IHRlc3QgcG93ZXIgY3ljbGluZyB0aGUgcGFuZWwgKGVnLiB2aWEgc3lzdGVtIHN1c3BlbmQvcmVz
dW1lIG9yIG90aGVyIG1lYW5zKQo+IAoKQWdyZWVkIHRoYXQgdGhlIG1vcmUgdGVzdGluZyB0aGUg
YmV0dGVyLgoKLS0gCkJlc3QgcmVnYXJkcywKCkphdmllciBNYXJ0aW5leiBDYW5pbGxhcwpDb3Jl
IFBsYXRmb3JtcwpSZWQgSGF0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
