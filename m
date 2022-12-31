Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43E6C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Dec 2022 15:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7MMlQ6BwTjwRtummdLRJBNg7/+hfjvOO1LWETMBz+Q=; b=VVV1KZ42i7WrAe
	LROGSV7YZapwX5rVMP2jfHSVjnhIcfequ2bZdFv2pwryPrQSQgkpRYt9z2uyi8/vRVCWwaN1vgKUE
	bUHwP+8bHXuaCONHy0dSUlx/+985d+SE/bRygVPaEzn3VuzsHVV5mqRPJ4YsJtTVXRsLkF6tDYJqL
	2AxRrC8vfSquGaxqEkMqcETZAiByduW9IMJreZyV/e9gGDXQmZSqm+VnWD+VHTzNLbKYfZm6g61zq
	zS+hEt+zfP5sBoKBCDC9EtF+p7wkEJa1wh8mxmBZbV96S3K/Jkq3bZFMbiq7EHrTc3gIzQowMVqja
	1czjyjBEAwjh9CNHyeMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBdow-0070lv-KD; Sat, 31 Dec 2022 15:30:50 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBdo7-0070Hs-Dj
	for linux-rockchip@lists.infradead.org; Sat, 31 Dec 2022 15:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672500598;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ioTWK7xKnjeiXWvIiaopMDUCl0bx2ByRbNdpJnCkz08=;
	b=UnrRG5tSefji+7/Ion4ygUR65VBboEadlu5lwoSRJQ+QFVq3uKPmRmUJIyoRn0daUkzRh6
	GJcoc52IcnqQdbZKwdSxqsuNNi7jLDL02CD3TCH2yXiF4OBjXQwAm/R01IkuHTCLO7EOKk
	IICizXTbYFNyWjZ7f2mOIeDJC5ilLuM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-617-edD7-ld9PbGiZI9iK8LycA-1; Sat, 31 Dec 2022 10:29:52 -0500
X-MC-Unique: edD7-ld9PbGiZI9iK8LycA-1
Received: by mail-wm1-f70.google.com with SMTP id c66-20020a1c3545000000b003d355c13229so15877568wma.0
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Dec 2022 07:29:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ioTWK7xKnjeiXWvIiaopMDUCl0bx2ByRbNdpJnCkz08=;
        b=lJMqAqJx5zeUNnlg9vaqNGEYniOhw6rqvsgz143vYprAb0mvrYruSQXP9g55f0H7Pd
         9OJygTj0LsII99czPqSYyUa/DHgLrqloVv9yy0b5I1lqMGi6FiRl1vS+qI6jC55NJyjE
         8AlPlSFkLwX6UtTpKDvLkIlfHcLEHWZr2lBvCtifPYZ20Prr1Iqd0wsOTfFsbRYICkuY
         6QQfDTVbYUeQ/g+rFg6GIurMBFahuQRmMGjgr1amuXStVvdeMVR7echqHChHkFwMxQr0
         9K0VdxscOy5qAZhyuqehBOuVcaxfyHoghIFbaGdGb2ZYZ3Pwn+4JcKbLwhzlLctwPIY6
         vTYw==
X-Gm-Message-State: AFqh2koz8zWkemhr9krJHCf7B0hGGu7K5jnTGSHA9+M8GQxioG09CPdM
	jxgiHAHqbjDREGirJ2qB6jRrvQURJOpTC9v/AnZ//tp+7Mac90r/oa3tBTajQ31Aivq+CYuuJbd
	osiqmSZbgpjaa+Z3tHQxcoMBZZO1wNMXf
X-Received: by 2002:adf:f54a:0:b0:242:73d5:d8cf with SMTP id j10-20020adff54a000000b0024273d5d8cfmr22054930wrp.32.1672500591431;
        Sat, 31 Dec 2022 07:29:51 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsI4kSzJ3dpbAZwpiBrPu3lrGFl0XL17c/4Epgs9kKSScUH5YrWEp2AzMmrpLu3nOWNFJp6MA==
X-Received: by 2002:adf:f54a:0:b0:242:73d5:d8cf with SMTP id j10-20020adff54a000000b0024273d5d8cfmr22054909wrp.32.1672500591182;
        Sat, 31 Dec 2022 07:29:51 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j6-20020a056000124600b0029100e8dedasm3736327wrx.28.2022.12.31.07.29.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Dec 2022 07:29:50 -0800 (PST)
Message-ID: <e21b5c12-0cc0-5ec0-b2c6-9dde633d5e10@redhat.com>
Date: Sat, 31 Dec 2022 16:29:49 +0100
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
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221230153745.tfs6n4zy4xfwugbw@core>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_072959_605152_5799A94A 
X-CRM114-Status: GOOD (  23.84  )
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

SGVsbG8gT25kxZllaiwKClRoYW5rcyBhIGxvdCBmb3IgeW91ciBmZWVkYmFjay4KCk9uIDEyLzMw
LzIyIDE2OjM3LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKClsuLi5dCgo+PiAgJmkyYzAgewo+PiAg
CWNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+Owo+PiAgCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMg
PSA8MTY4PjsKPj4gQEAgLTIxNCw2ICsyNTEsOSBAQCB2Y2MzdjBfdG91Y2g6IExET19SRUcyIHsK
Pj4gIAkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBfdG91Y2giOwo+PiAgCQkJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+PiAgCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDMwMDAwMDA+Owo+PiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiArCQkJCQly
ZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4+ICsJCQkJfTsKPiAKPiBZb3UncmUgaW5zdHJ1Y3Rp
bmcgUks4MTggdG8gc2h1dCBkb3duIHRoZSByZWd1bGF0b3IgZm9yIHRvdWNoIGNvbnRyb2xsZXIg
ZHVyaW5nCj4gc3VzcGVuZCwgYnV0IEkgdGhpbmsgR29vZGl4IGRyaXZlciBleHBlY3RzIHRvdWNo
IGNvbnRyb2xsZXIgdG8gYmUga2VwdCBwb3dlcmVkIG9uCj4gZHVyaW5nIHN1c3BlbmQuIEFtIEkg
bWlzc2luZyBzb21ldGhpbmc/Cj4gCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
bGF0ZXN0L3NvdXJjZS9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL2dvb2RpeC5jI0wxNDA1Cj4K
CllvdSB0ZWxsIG1lLCBpdCBpcyB5b3VyIHBhdGNoIDopIEkganVzdCBjaGVycnktcGlja2VkIHRo
aXMgZnJvbSB5b3VyIHRyZWU6CgpodHRwczovL2dpdGh1Yi5jb20vbWVnb3VzL2xpbnV4L2NvbW1p
dC8xMWY4ZGE2MGQ2YTUKCkJ1dCBpZiB0aGF0IGlzIG5vdCBjb3JyZWN0LCB0aGVuIEkgY2FuIGRy
b3AgdGhlIHJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZC4KIApbLi4uXQoKPj4gKwo+PiArCXRvdWNo
c2NyZWVuQDE0IHsKPj4gKwkJY29tcGF0aWJsZSA9ICJnb29kaXgsZ3Q5MTdzIjsKPiAKPiBUaGlz
IGlzIG5vdCB0aGUgY29ycmVjdCBjb21wYXRpYmxlLiBQaW5lcGhvbmUgUHJvIHVzZXMgR29vZGl4
IEdUMTE1ODoKPiAKPiBHb29kaXgtVFMgMy0wMDE0OiBJRCAxMTU4LCB2ZXJzaW9uOiAwMTAwCj4g
R29vZGl4LVRTIDMtMDAxNDogRGlyZWN0IGZpcm13YXJlIGxvYWQgZm9yIGdvb2RpeF8xMTU4X2Nm
Zy5iaW4gZmFpbGVkIHdpdGggZXJyb3IgLTIKPiAKPgoKU2FtZSB0aGluZy4gSSB3YXNuJ3QgYXdh
cmUgb2YgdGhpcyBzaW5jZSB5b3VyIHBhdGNoIHdhcyB1c2luZyB0aGlzIGNvbXBhdGlibGUKc3Ry
aW5nLiBJZiAiZ29vZGl4LGd0MTE1OCIgaXMgdGhlIGNvcnJlY3QgY29tcGF0aWJsZSBzdHJpbmcs
IHRoZW4gSSBhZ3JlZSB3ZQpzaG91bGQgaGF2ZSB0aGF0IGluc3RlYWQgZXZlbiB3aGVuIHRoZSBm
aXJtd2FyZSBpcyBtaXNzaW5nLiBCZWNhdXNlIHRoZSBEVCBpcwpzdXBwb3NlZCB0byBkZXNjcmli
ZSB0aGUgaGFyZHdhcmUuIFRoZSBGVyBpc3N1ZSBjYW4gYmUgdGFja2xlZCBhcyBhIGZvbGxvdy11
cC4KClsuLi5dIAoKPj4gKwo+PiArJnZvcGIgewo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gKwlh
c3NpZ25lZC1jbG9ja3MgPSA8JmNydSBEQ0xLX1ZPUDBfRElWPiwgPCZjcnUgRENMS19WT1AwPiwK
Pj4gKwkJCSAgPCZjcnUgQUNMS19WT1AwPiwgPCZjcnUgSENMS19WT1AwPjsKPj4gKwlhc3NpZ25l
ZC1jbG9jay1yYXRlcyA9IDwwPiwgPDA+LCA8NDAwMDAwMDAwPiwgPDEwMDAwMDAwMD47Cj4+ICsJ
YXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY3J1IFBMTF9DUExMPiwgPCZjcnUgRENMS19WT1Aw
X0ZSQUM+Owo+PiArfTsKPiAKPiBTbyBoZXJlIHlvdSdyZSBwdXR0aW5nIGEgZnJhY3Rpb25hbCBj
bG9jayBpbnRvIHBhdGggYmV0d2VlbiBDUExMIC0+IFZPUDBfRElWCj4gLT4gRENMS19WT1AwX0ZS
QUMgLT4gRENMS19WT1AwLgo+IAo+IEZyYWN0aW9uYWwgY2xvY2tzIHJlcXVpcmUgMjB4IGRpZmZl
cmVuY2UgYmV0d2VlbiBpbnB1dCBhbmQgb3V0cHV0IHJhdGVzLCBhbmQKPiBDUExMIGlzIDgwME1o
eiBJSVJDLCB3aGlsZSB5b3UgcmVxdWlyZSA3NC4yNU1IeiBEQ0xLLCBzbyB0aGlzIHdpbGwgbm90
IHdvcmsKPiBjb3JyZWN0bHkuCj4gCj4gRXZlbiBpZiB0aGlzIHNvbWVob3cgd29ya3MgYnkgZnJh
Y3Rpb25hbCBjbG9jayBiZWluZyBieXBhc3NlZCwgSSBkaWQgbm90IGRlc2lnbgo+IHRoZSBwYW5l
bCBtb2RlIHRvIGJlIHVzZWQgd2l0aCBDUExMJ3MgODAwIE1IeiwgYnV0IHdpdGggR1BMTCBmcmVx
dWVjeSBvZiA1OTQgTUh6Lgo+IAo+IEdQTEwgNTk0Lzc0LjI1ID0gOCAgKGludGVncmFsIGRpdmlk
ZXIgd2l0aG91dCB0aGUgbmVlZCBmb3IgZnJhY3Rpb25hbCBjbG9jaykKPiBDUExMIDgwMC83NC4y
NSA9IH4xMC43NzQ0MTA3NzQ0MTA3NzQ0MTA3Nwo+IAo+IElmIHlvdSByZWFsbHkgd2FudCB0byB1
c2UgZnJhY3Rpb25hbCBjbG9jaywgeW91J2QgbmVlZCB0byBwYXJlbnQgaXQgdG8gVlBMTAo+IGFu
ZCBzZXQgVlBMTCByZWFsbHkgaGlnaCwgbGlrZSBjbG9zZSB0byAyR0h6Lgo+CgpUaGFua3MgZm9y
IHRoZSBleHBsYW5hdGlvbi4gVGhlbiBJIGp1c3QgbmVlZCB0byBzcXVhc2ggb24gdG9wIG9mIHRo
aXMsIHRoZQpmb2xsb3dpbmcgcGF0Y2guIElzIHRoYXQgY29ycmVjdD8KCmh0dHBzOi8vZ2l0aHVi
LmNvbS9tZWdvdXMvbGludXgvY29tbWl0L2YxOWNlN2JiN2Q3MgoKLS0gCkJlc3QgcmVnYXJkcywK
CkphdmllciBNYXJ0aW5leiBDYW5pbGxhcwpDb3JlIFBsYXRmb3JtcwpSZWQgSGF0CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
