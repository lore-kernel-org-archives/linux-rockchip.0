Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57430C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 11:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2KW4VjdJuey+X+YPuiqddy7L7s7oz6cFNsW0VECJpE=; b=IbCTxoWRbmY9xO
	597Rz4YU6PhXN/8wYOfYnQIaNprdt0F7nOzyOIeux9k0a3jsGT4vLq4yzvBQBpYIhjP0lPRtT4pmQ
	gB25rwo5BNowAN8wVQfKPji6pd4W0Jbvn3taxdode/8DW1Wxby5LcPk9HCr7y8RSN0W/6BQRy5lw2
	hobRKYFyqa3m8pASNmlysOVLyeaTP9v+FO0W/er/EXWKCN/wr6XFpsLfSocBgMg2K8gBalW/Q8OBt
	3WbvKQeXWk/+60ZJDSMwpYcOD6+n08H0x8xnauYeOC03Me7ywoAiVfn/0JfdReOmNrXiMlZosHzHr
	ufrO4cNpilETqysQJjkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAU3w-007KXN-39;
	Tue, 05 Dec 2023 11:58:05 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAU3u-007KWB-1G;
	Tue, 05 Dec 2023 11:58:03 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-28648be0811so3887438a91.0;
        Tue, 05 Dec 2023 03:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701777480; x=1702382280; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WAw5aOcHJcYASQz0eHH4lmIjL4FIKnv8jTkbUdzuwNM=;
        b=ZouHSP1yW09sJpBcg2WqeCQ8EDSMdRhJximdpsd8b9iYfm0D9u5/RlfmkXHgSweOG2
         kfQzSHbeyW2uDW6dY7bGmRToedv0BYRPFKIkz6X7jmUOUbvK8tGvZwvocJZFLJgtqBBe
         SSAesiNOPfPHT1tC8fABxO/h8GsjpJHldlSetEqJhIijEbLK/qcUvihVB/R1W4XiTSYu
         slFxfiFCwfqMuZpGO4fTRvPVX80keMImmHLW/1URT1ylZa8Wx38gct7dUSDuanI5vHNJ
         W4M0Hff/SgXCggojGqymU9UWaU47vE/r6exAl9WB6WA7NAv0U6E+2O5LtyvmHmz2dORN
         ZxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701777480; x=1702382280;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WAw5aOcHJcYASQz0eHH4lmIjL4FIKnv8jTkbUdzuwNM=;
        b=qYv5j06VBG0d+2mu0g5ghz2rLsY7p4Qksfzy4v3ZiwqbVWsg9V2x4ee7Nt4vOaK58P
         9RojNtFvPd4NaJ54xgS51FyL8Y/seON+828INGkF6kSMnFw4M7Tt7c5dKiLU8qEKE4UK
         l84FwzGct9366vvhVXL9T9DBxQ1EC8AUU+riWiqm+z4iHaatfszyVjHDywTghi8Lyosy
         YCzCzM21DwmDnSGI23TjSJdzLC4toBVMA84YuSLFjrZGaJZ+YynPcti4SPF0Y/zBkAdj
         wC+Vjt4A/FqR/4OI9VZM83LmWuqvag0MX7FwtwZ1nk3OxgN2i2TlsLm26ff3jxpSQpcW
         g5zA==
X-Gm-Message-State: AOJu0YyZlNu/WTl72UA59nyf0o6D6zEMMH/BN718sRCPPb1PkoGXTg8y
	navJxbySK9Atem9/8UCDR6ufSnuzmi73phjxwIc=
X-Google-Smtp-Source: AGHT+IEjCRGNYqa5mnzUdPODZn87BAXipHow/pst6yJq3yWD1h01v8oSVDlhiOYM4SwKwmfR5Iibs6ibxS/IAEPecp4=
X-Received: by 2002:a17:90b:1e41:b0:286:d1d6:9a61 with SMTP id
 pi1-20020a17090b1e4100b00286d1d69a61mr854689pjb.7.1701777480051; Tue, 05 Dec
 2023 03:58:00 -0800 (PST)
MIME-Version: 1.0
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com> <20231205-rkisp-irq-fix-v1-2-f4045c74ba45@ideasonboard.com>
In-Reply-To: <20231205-rkisp-irq-fix-v1-2-f4045c74ba45@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 5 Dec 2023 05:57:48 -0600
Message-ID: <CAHCN7xJqw-hSD7rWfxFq5NWnF+=RrpCWR+js9358jAL0_WzVFw@mail.gmail.com>
Subject: Re: [PATCH 2/4] media: rkisp1: Fix IRQ handler return values
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Paul Elder <paul.elder@ideasonboard.com>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, kieran.bingham@ideasonboard.com, 
	umang.jain@ideasonboard.com, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_035802_432725_EEE3BF24 
X-CRM114-Status: GOOD (  21.41  )
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

T24gVHVlLCBEZWMgNSwgMjAyMyBhdCAyOjEw4oCvQU0gVG9taSBWYWxrZWluZW4KPHRvbWkudmFs
a2VpbmVuQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gVGhlIElSUSBoYW5kbGVyIHJraXNw
MV9pc3IoKSBjYWxscyBzdWItaGFuZGxlcnMsIGFsbCBvZiB3aGljaCByZXR1cm5zIGFuCj4gaXJx
cmV0dXJuX3QgdmFsdWUsIGJ1dCBya2lzcDFfaXNyKCkgaWdub3JlcyB0aG9zZSB2YWx1ZXMgYW5k
IGFsd2F5cwo+IHJldHVybnMgSVJRX0hBTkRMRUQuCj4KPiBGaXggdGhpcyBieSBjb2xsZWN0aW5n
IHRoZSByZXR1cm4gdmFsdWVzLCBhbmQgcmV0dXJuaW5nIElSUV9IQU5ETEVEIG9yCj4gSVJRX05P
TkUgYXMgYXBwcm9wcmlhdGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBUb21pIFZhbGtlaW5lbiA8dG9t
aS52YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5jIHwgMTggKysrKysrKysrKysrKystLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNw
MS1kZXYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1k
ZXYuYwo+IGluZGV4IDc2ZjkzNjE0YjRjZi4uMWQ2MGY0YjhiZDA5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1kZXYuYwo+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1kZXYuYwo+IEBA
IC00NDUsMTcgKzQ0NSwyNyBAQCBzdGF0aWMgaW50IHJraXNwMV9lbnRpdGllc19yZWdpc3Rlcihz
dHJ1Y3Qgcmtpc3AxX2RldmljZSAqcmtpc3AxKQo+Cj4gIHN0YXRpYyBpcnFyZXR1cm5fdCBya2lz
cDFfaXNyKGludCBpcnEsIHZvaWQgKmN0eCkKPiAgewo+ICsgICAgICAgaXJxcmV0dXJuX3QgcmV0
Owo+ICsKPiAgICAgICAgIC8qCj4gICAgICAgICAgKiBDYWxsIHJraXNwMV9jYXB0dXJlX2lzcigp
IGZpcnN0IHRvIGhhbmRsZSB0aGUgZnJhbWUgdGhhdAo+ICAgICAgICAgICogcG90ZW50aWFsbHkg
Y29tcGxldGVkIHVzaW5nIHRoZSBjdXJyZW50IGZyYW1lX3NlcXVlbmNlIG51bWJlciBiZWZvcmUK
PiAgICAgICAgICAqIGl0IGlzIHBvdGVudGlhbGx5IGluY3JlbWVudGVkIGJ5IHJraXNwMV9pc3Bf
aXNyKCkgaW4gdGhlIHZlcnRpY2FsCj4gICAgICAgICAgKiBzeW5jLgo+ICAgICAgICAgICovCj4g
LSAgICAgICBya2lzcDFfY2FwdHVyZV9pc3IoaXJxLCBjdHgpOwo+IC0gICAgICAgcmtpc3AxX2lz
cF9pc3IoaXJxLCBjdHgpOwo+IC0gICAgICAgcmtpc3AxX2NzaV9pc3IoaXJxLCBjdHgpOwo+Cj4g
LSAgICAgICByZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gKyAgICAgICByZXQgPSBJUlFfTk9ORTsKPiAr
Cj4gKyAgICAgICBpZiAocmtpc3AxX2NhcHR1cmVfaXNyKGlycSwgY3R4KSA9PSBJUlFfSEFORExF
RCkKPiArICAgICAgICAgICAgICAgcmV0ID0gSVJRX0hBTkRMRUQ7Cj4gKwo+ICsgICAgICAgaWYg
KHJraXNwMV9pc3BfaXNyKGlycSwgY3R4KSA9PSBJUlFfSEFORExFRCkKPiArICAgICAgICAgICAg
ICAgcmV0ID0gSVJRX0hBTkRMRUQ7Cj4gKwo+ICsgICAgICAgaWYgKHJraXNwMV9jc2lfaXNyKGly
cSwgY3R4KSA9PSBJUlFfSEFORExFRCkKPiArICAgICAgICAgICAgICAgcmV0ID0gSVJRX0hBTkRM
RUQ7Cj4gKwoKSXQgc2VlbXMgbGlrZSB3ZSdyZSB0aHJvd2luZyBhd2F5IHRoZSB2YWx1ZSBvZiBy
ZXQgZWFjaCB0aW1lIHRoZQpzdWJzZXF1ZW50IGlmIHN0YXRlbWVudCBpcyBldmFsdWF0ZWQuICBX
aGV0aGVyIG9yIG5vdCB0aGV5IHJldHVybgpkaWRuJ3QgbWF0dGVyIGJlZm9yZSwgYW5kIHRoZSBv
bmx5IG9uZSB0aGF0IHNlZW1zIHVzaW5nIHRoZSByZXR1cm4KY29kZSBpcyB0aGUgbGFzdCBvbmUu
CgpXb3VsZG4ndCBpdCBiZSBzaW1wbGVyIHRvIHVzZSByZXQgPSBya2lzcDFfY2FwdHVyZV9pc3Io
aXJxLCBjdHgpLCByZXQKPSBya2lzcDFfaXNwX2lzcihpcnEsIGN0eCkgYW5kIHJldCA9IHJraXNw
MV9jc2lfaXNyKGlycSwgY3R4KSBpZiB3ZQpjYXJlIGFib3V0IHRoZSByZXR1cm4gY29kZT8KCkhv
dyBkbyB5b3UgZXhwZWN0IHRoaXMgdG8gcmV0dXJuIGlmIG9uZSBvZiB0aGUgZmlyc3QgdHdvIGRv
bid0IHJldHVybgpJUlFfSEFORExFRD8KCmFkYW0KCj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICB9
Cj4KPiAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBweDMwX2lzcF9jbGtzW10gPSB7Cj4KPiAt
LQo+IDIuMzQuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
