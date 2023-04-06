Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AFBEC76196
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Apr 2023 18:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIOZaSN3vL00fJNkVxuz+7lZelW1g2ZqdEHjmfO/uYY=; b=Uusl5OtKjKxBbM
	5E+zyg9iPJpAIOAi+uQtOHMOG3Fye8K7AXha8hP+Aun0n0cT7X5bhEz6CQkkasAyslgVHlZjYDDmt
	f9GP2bUj/wUNfMpualz+PdJbRYH0kul4TMRqVMnvOu9dhEWGWw2P34kiNTj2Ox9SIxw8KAGAtEmJE
	Km4WV3hHX1ka1OFK2qy1yTE63nbBwqfeTwBVSSj5oDnFFTsib6DiA+FrLHLU8habAL9KW9qdrrVk5
	QUR/848mepO+OoJXn3PQ978HIKZjfA9F4R9YaeNYJcdTOh94HzA8x6XVpSQDstYYet9uPbhIrWHV8
	L3VS/2bQtngXLvuJcz7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUKj-008FuF-0q;
	Thu, 06 Apr 2023 18:27:41 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUKg-008Ft4-00;
	Thu, 06 Apr 2023 18:27:39 +0000
Received: by mail-ot1-x333.google.com with SMTP id c2-20020a056830348200b006a3ab0ba8a2so2865089otu.1;
        Thu, 06 Apr 2023 11:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680805655; x=1683397655;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Urs0sPmIxKY7EMdaMcVPb88xjrnr7/n5Z/v53+WXKo0=;
        b=aNBjohhSpNCH5LwvwGucbPyygMc7wmva992tdG/a7wUKHSEJdIWnQpidnRQFyxIcaF
         D5vuDuu4DzBQ99/UvSAR1oyfEdeGW1N1XOpIlxgpDHtgZc+jrdqz+6mads5i7seB5MbA
         7WbXP+eJ4EXSrGoWg/ms+felB+/BFISBR78vepSQj02EmC56OI85FMg+zoCGfM7DjL0l
         OXSwMQqICF/hpyKxfBguULLnvqJzmMPsbd7zy3IZsE4ghBqFHTaSXFisz1Hc5FXlhMgc
         LxV+6ujBfIlq0Wzh+++RgLdeCzzIH5AZJI6j8t9OlSvnw42+Mh4qN/HvJ8pgTU8doGoR
         tm3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680805655; x=1683397655;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Urs0sPmIxKY7EMdaMcVPb88xjrnr7/n5Z/v53+WXKo0=;
        b=yd0RfjNydV/v5zt0lJl7iKriFAyYmL1U0gs4IP6lb36sklvA3y6NrQQVAm5QWaONVF
         sTk7ZSr9xkyJuHpm2jx26+SaFI4JB1ANV/AMZ9V6Z/TX6N72K5T65Kv5jCb7eeK5F9gn
         saG/hGeVgju+kGxZwH4oDe5yK04Fo9QLGfAvx/p1REZ6eFaoXt/vf7sHM/raVt6GyGwx
         wUXfqYG1CdVT3SoshNDuYAfKOQeTeNKK7amHYV0QeZOEbeunB1xtpRFCW4YNBfulqLr6
         rBhCgVGL+plGHmrtgmtROtfbF002jvWlXm5KC7OI1Z1QR3KS4LFB1zoeh00EY3hKknyG
         flFA==
X-Gm-Message-State: AAQBX9cxQ9dQgMMksNypGL69Ui9SpQ4MTrXxxyYWZKt4wAGHDTGznOKi
	5mApzC+2BqzMAbllJ+qK0Yc=
X-Google-Smtp-Source: AKy350Z9t6tWzzltI8glK73b80eEQJnXz/5+x0SuFtrFkF7BWJRMfu+4DcuHG6U2OVSbqb4D7zQ/0w==
X-Received: by 2002:a05:6830:334d:b0:69b:1665:8fb3 with SMTP id l13-20020a056830334d00b0069b16658fb3mr3361991ott.15.1680805655572;
        Thu, 06 Apr 2023 11:27:35 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id x17-20020a9d6291000000b006884c42a38asm974512otk.41.2023.04.06.11.27.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 11:27:35 -0700 (PDT)
Message-ID: <31a5bd88-4121-ac5c-0d8d-eee6b221f1db@roeck-us.net>
Date: Thu, 6 Apr 2023 11:27:33 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: (subset) [PATCH v2 0/2] Add PWM fan support to Rock 5B board
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Jean Delvare <jdelvare@suse.com>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
 <168071663557.3186456.17606522894011578076.b4-ty@sntech.de>
 <1a914522-8780-febd-7224-121b1f1fc2ba@roeck-us.net>
 <840877554.0ifERbkFSE@diego>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <840877554.0ifERbkFSE@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_112738_039504_FE275DDA 
X-CRM114-Status: GOOD (  19.76  )
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

T24gNC81LzIzIDE0OjM1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNaXR0d29jaCwgNS4g
QXByaWwgMjAyMywgMjE6MDQ6MDQgQ0VTVCBzY2hyaWViIEd1ZW50ZXIgUm9lY2s6Cj4+IE9uIDQv
NS8yMyAxMDo0NSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+PiBPbiBUdWUsIDQgQXByIDIwMjMg
MjA6Mzg6MDUgKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+PiBUaGlzIHBhdGNo
IHNlcmllcyBlbmFibGVzIHN1cHBvcnQgZm9yIHRoZSBQV00gY29udHJvbGxlZCBoZWF0IHNpbmsg
ZmFuCj4+Pj4gb24gdGhlIFJvY2sgNUIgU0JDIGFuZCwgYWRkaXRpb25hbGx5LCBjb252ZXJ0cyB0
aGUgaHdtb24gUFdNIGZhbiBiaW5kaW5ncwo+Pj4+IHRvIERUIHNjaGVtYSBmb3JtYXQuCj4+Pj4K
Pj4+PiBDaGFuZ2VzIGluIHYyOgo+Pj4+ICAgIC0gVXBkYXRlZCBQQVRDSCAxLzIgYWNjb3JkaW5n
IHRvIFJvYidzIHJldmlldwo+Pj4+ICAgIC0gQWRkZWQgUmV2aWV3ZWQtYnkgZnJvbSBDaHJpc3Rv
cGhlciB0byBQQVRDSCAyLzIKPj4+PiAgICAtIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzIwMjMwNDAzMTA1MDUyLjQyNjEzNS0xLWNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEu
Y29tLwo+Pj4+Cj4+Pj4gWy4uLl0KPj4+Cj4+PiBBcHBsaWVkLCB0aGFua3MhCj4+Pgo+Pgo+PiBC
b3RoIHBhdGNoZXMgb3Igb25seSB0aGUgc2Vjb25kIG9uZSA/Cj4gCj4gb25seSB0aGUgc2Vjb25k
IG9uZSBvZiBjb3Vyc2UuIEFjY29yZGluZyB0byBlYXJsaWVyIHRhbGtzIHRoZSBkdHMgcGF0Y2gK
PiBkb2VzIGFscmVhZHkgZm9sbG93IHRoZSB0ZXh0IGJpbmRpbmcsIHNvIHRoZSB5YW1sIGNvbnZl
cnNpb24gaXMgYWN0dWFsbHkKPiBub3QgYSByZXF1aXJlbWVudCBmb3IgaXQuCj4gCj4gU28gSSBw
aWNrZWQgdGhlIGR0cyBwYXRjaCBsZXQgdGhlIGJpbmRpbmcgc29ydCBpdHNlbGYgd2hlbiBwZW9w
bGUgaGF2ZQo+IHRpbWUgZm9yIGl0IDotKSAuCj4gCj4gCj4gTG9va2luZyBhdCB0aGUgbWFpbCBi
NCBjcmVhdGVkLCBJIGd1ZXNzZWQgdGhpcyB3b3VsZCBhbHNvIGJlIHZpc2libGUKPiB3aXRoIHRo
ZSBzdWJqZWN0IHNheWluZyAoc3Vic2V0KSBhbmQgdGhlIGxpc3RlZCBjb21taXRzIG9ubHkgc2hv
d2luZwo+IAo+IFsyLzJdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiByazM1ODgtcm9jay01YjogQWRk
IHB3bS1mYW4KPiAgICAgICAgY29tbWl0OiBmMzZiYjE3NjUzZTRiOWUyNmJiZGIxMjI0MDI3ZDIw
NjE0ZTc3NjM2Cj4gCgpLaW5kIG9mLCBzdXJlLCBidXQgSSBmaWd1cmVkIGl0IGRvZXNuJ3QgaHVy
dCBhc2tpbmcgdG8gYXZvaWQgdGhlIHNpdHVhdGlvbgooYWdhaW4pIHdoZXJlIEkgYXBwbHkgYSBw
YXRjaCBhbmQgdGhlbiBnZXQgYSBuaWNlIGUtbWFpbCB0ZWxsaW5nIG1lIHRoYXQKc29tZSBvdGhl
ciBicmFuY2ggYWxzbyBhcHBsaWVkIHRoZSBzYW1lIHBhdGNoLgoKR3VlbnRlcgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
