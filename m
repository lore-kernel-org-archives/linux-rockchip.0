Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2976C5320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ps+lBTLGXWYEuzaLCBwyXIYu0/UMcgwBQqWN8AJVM1I=; b=xkZUIkA3W/88hx
	4XAAwSXoXCtXXRmcP98T5CXcGZsAojNOmpeipOhh/bT5ph0Bkr1KDHGenRX+5YdG2meaQkjfKZzJB
	hCtgjwyIthtnyP9Z+J63VglNMLJbjmyC8cTnjPUS6gd5YEX87K4kD8pyEKLOlH09bkasivtBOPSdQ
	Dzp5NqR3qstEBV3t/F+Fa7GrVvNa/eGbahylO/1NrZR/8wXoG+XlBoKNnxAaeyF6j82qel5Dn+dIe
	HkUpaBZnj4o4VcsT4IIheHZhLxaCGvW7+EU/cEcRmzmObFs5iLYYKLSuk3RRQTeSxOmGVVgn8gVLk
	fjyyVsLztFFr2NVWLOQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisa1-0000000Ab0b-2NKt;
	Tue, 27 Aug 2024 09:33:37 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisZx-0000000AazU-47lx
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 09:33:36 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-428e09ee91eso6666205e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Aug 2024 02:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724751212; x=1725356012; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xhCRE/Dt+PARny9PJYa/9C1D1jCS6Em1dPLj6ri+rj8=;
        b=F092chvuFnkLMyUr3/ly52U3M4wBLEBsD08b5mxRpoyYsBAy19xAOg5/L87PhnUI+U
         N6bd5oUkZ2MrXVXBxfwXQ69fZMoJdu/FtTIVL9pGTSTVZreM42eOJ5ijMx4n9eU4tvHH
         xmIT589Us4ccqDo6yNvfRduyEbFdxu0YOoaf4e17USmYO74RibMhz6VgHPBi1ZU8lxTV
         Zre21h3LdxzE8lBgO9gxNvcj/wG7xAeY2uL+RuEbFEOl1UvyEn7K7J5mA0jhDIBBOEak
         cmr0N/bhXHOwxtpMpe5bhWpWX+uh/61dW7R5jid/tJodkrBvNcK4HrgXJEPKECGOMA0a
         ZhLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724751212; x=1725356012;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xhCRE/Dt+PARny9PJYa/9C1D1jCS6Em1dPLj6ri+rj8=;
        b=t8JRrpKUca8PetF6fAZiIvemT0s4PCcYJqP4WNYCIpS8oC1+U4uMo9R4P/tJgcazJB
         MBxf8CypUPxJdcIVFupZDizP/OyUwivWfsXfmpN9KEDee/xjIk9AVJ4g9QG8s4ZohUea
         JBFbY7J4gam2NfPEoaPNFxACseWOK8w5DzgsgrNa6B7yPfTm+MYtrDt4A5EVbgeeKPKS
         YjiBlHHl82zG2ehdvISLAQfU4KTlHMMSRqmlT3g/W62CIb68kUBuImMZhPfTQpHQ2FlM
         YJti7Oz9Kwwj5R98vCcNNcFQzCz+/WSBrd5SWAmWuN+t3U4RbRtsTsayxT+3jYVqrcCt
         sq7w==
X-Forwarded-Encrypted: i=1; AJvYcCXWO9MTF3mnCymwx0Mq1WsODvE/pE18VhVn83hS5dW/Q/jt/oMtg+wi8E4KfAr1oWtyDsv9PTHuKQ2FDM9iEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVz6KQ1yPzdGN0pYNfhf85qAm6qJzMjVWJ+En1pChk/YnzZlBS
	Yx1ca3aHxL1VLddU6MKjJJk9nmRWIZSVUGdFr869NXaeq4vRPwFMLqix+MLWYwU=
X-Google-Smtp-Source: AGHT+IH63pkESvr8WAGG6Va2kOWPz/dYDrPxiymv32ZbAdx/cvZUiR85ioNyNii7YqJtjoTUp0YkxA==
X-Received: by 2002:a05:600c:1391:b0:428:f1b4:3466 with SMTP id 5b1f17b1804b1-42acca00571mr54085815e9.3.1724751212175;
        Tue, 27 Aug 2024 02:33:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42abefc626fsm217777435e9.31.2024.08.27.02.33.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 02:33:31 -0700 (PDT)
Message-ID: <a48f1a0b-0e20-4782-bf6b-c430da9ae391@linaro.org>
Date: Tue, 27 Aug 2024 11:33:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] pmdomain: renesas: rcar-gen4-sysc: Use scoped
 device node handling to simplify error paths
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
 <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
 <CAMuHMdV0R0+u1eCiUOHhL5w-wzge9KhgyumJSd28oF9kQmnx_Q@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMuHMdV0R0+u1eCiUOHhL5w-wzge9KhgyumJSd28oF9kQmnx_Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_023334_062531_5AEAD765 
X-CRM114-Status: GOOD (  19.44  )
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

T24gMjcvMDgvMjAyNCAwOTo0OCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IEhpIEtyenlz
enRvZiwKPiAKPiBPbiBGcmksIEF1ZyAyMywgMjAyNCBhdCAyOjUx4oCvUE0gS3J6eXN6dG9mIEtv
emxvd3NraQo+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+PiBPYnRh
aW4gdGhlIGRldmljZSBub2RlIHJlZmVyZW5jZSB3aXRoIHNjb3BlZC9jbGVhbnVwLmggdG8gcmVk
dWNlIGVycm9yCj4+IGhhbmRsaW5nIGFuZCBtYWtlIHRoZSBjb2RlIGEgYml0IHNpbXBsZXIuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZz4KPiAKPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCj4gCj4+IC0tLSBhL2Ry
aXZlcnMvcG1kb21haW4vcmVuZXNhcy9yY2FyLWdlbjQtc3lzYy5jCj4+ICsrKyBiL2RyaXZlcnMv
cG1kb21haW4vcmVuZXNhcy9yY2FyLWdlbjQtc3lzYy5jCj4+IEBAIC0zMDMsMTIgKzMwNCwxMiBA
QCBzdGF0aWMgaW50IF9faW5pdCByY2FyX2dlbjRfc3lzY19wZF9pbml0KHZvaWQpCj4+ICAgICAg
ICAgY29uc3Qgc3RydWN0IHJjYXJfZ2VuNF9zeXNjX2luZm8gKmluZm87Cj4+ICAgICAgICAgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4+ICAgICAgICAgc3RydWN0IHJjYXJfZ2Vu
NF9wbV9kb21haW5zICpkb21haW5zOwo+PiAtICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7
Cj4+ICAgICAgICAgdm9pZCBfX2lvbWVtICpiYXNlOwo+PiAgICAgICAgIHVuc2lnbmVkIGludCBp
Owo+PiAgICAgICAgIGludCBlcnJvcjsKPj4KPj4gLSAgICAgICBucCA9IG9mX2ZpbmRfbWF0Y2hp
bmdfbm9kZV9hbmRfbWF0Y2goTlVMTCwgcmNhcl9nZW40X3N5c2NfbWF0Y2hlcywgJm1hdGNoKTsK
Pj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wIF9fZnJlZShkZXZpY2Vfbm9kZSkgPQo+
PiArICAgICAgICAgICAgICAgb2ZfZmluZF9tYXRjaGluZ19ub2RlX2FuZF9tYXRjaChOVUxMLCBy
Y2FyX2dlbjRfc3lzY19tYXRjaGVzLCAmbWF0Y2gpOwo+IAo+IFRoaXMgYnJlYWtzIHRoZSBkZWNs
YXJhdGlvbnMvYmxhbmstbGluZS9jb2RlIHN0cnVjdHVyZSwgc28gcGxlYXNlIG1vdmUKPiB0aGlz
IHVwLgoKV2hhdCBkbyB5b3UgbWVhbiAiZGVjbGFyYXRpb24gc3RydWN0dXJlIj8gVGhhdCdzIHRo
ZSB3YXkgaG93IHZhcmlhYmxlcwp3aXRoIGNvbnN0cnVjdG9ycyBhcmUgZXhwZWN0ZWQgdG8gYmUg
ZGVjbGFyZWQgLSB3aXRoaW4gdGhlIGNvZGUuCgo+IAo+IElmIHlvdSBpbnNpc3Qgb24ga2VlcGlu
ZyBhc3NpZ25tZW50IHRvIGFuZCB2YWxpZGF0aW9uIG9mIG5wIHRvZ2V0aGVyLAo+IHRoZSBsaW5l
IHNob3VsZCBiZSBzcGxpdCBpbiBkZWNsYXJhdGlvbiBhbmQgYXNzaWdubWVudC4KCk5vLCB0aGF0
IHdvdWxkIGJlIGluY29uc2lzdGVudCB3aXRoIGNsZWFudXAvY29uc3RydWN0b3IgY29kaW5nIHN0
eWxlLgpNYXliZSB0aGlzIGlzIHNvbWV0aGluZyBuZXcsIHNvIGxldCBtZSBicmluZyBwcmV2aW91
cyBkaXNjdXNzaW9uczoKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQUhrLT13aWNmdldQ
dVJWREc1UjFtWlN4RDhYZz0tMG5MT2lIYXkyVF9VSjB5RFg0MmdAbWFpbC5nbWFpbC5jb20vCgpo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FIay09d2dSSGlWNVZTeHRmWEE0UzZhTFVtY1FZ
RXVCNjd1M0JKUEpQdHVFU3MxSnlBQG1haWwuZ21haWwuY29tLwoKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsL0NBSGstPXdodk9HTDNhTmh0cHMwWWtzR3R6dmFvYl9idlpwYmFUY1ZFcUd3Tk14
QjZ4Z0BtYWlsLmdtYWlsLmNvbS8KCmFuZCBmaW5hbGx5IGl0IHdpbGwgcmVhY2ggZG9jdW1lbnRh
dGlvbiAoYWx0aG91Z2ggaXQgZm9jdXNlcyBvbgp1bndpbmRpbmcgcHJvY2VzcyB0byBiZSBzcGVj
aWZpYyAtICJXaGVuIHRoZSB1bndpbmQgb3JkZXIgLi4uIik6Cmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8xNzExNzU1ODU3MTQuMjE5Mjk3Mi4xMjY2MTY3NTg3NjMwMDE2Nzc2Mi5zdGdpdEBk
d2lsbGlhMi14ZmguamYuaW50ZWwuY29tLwoKPiAKPj4gICAgICAgICBpZiAoIW5wKQo+PiAgICAg
ICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4+Cj4gCj4+IEBAIC0zNjksMTQgKzM2NSwxMiBA
QCBzdGF0aWMgaW50IF9faW5pdCByY2FyX2dlbjRfc3lzY19wZF9pbml0KHZvaWQpCj4+ICAgICAg
ICAgICAgICAgICBpZiAoZXJyb3IpIHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgcHJfd2Fy
bigiRmFpbGVkIHRvIGFkZCBQTSBzdWJkb21haW4gJXMgdG8gcGFyZW50ICV1XG4iLAo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFyZWEtPm5hbWUsIGFyZWEtPnBhcmVudCk7Cj4+
IC0gICAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0X3B1dDsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIGVycm9yOwo+PiAgICAgICAgICAgICAgICAgfQo+PiAgICAgICAgIH0K
Pj4KPj4gICAgICAgICBlcnJvciA9IG9mX2dlbnBkX2FkZF9wcm92aWRlcl9vbmVjZWxsKG5wLCAm
ZG9tYWlucy0+b25lY2VsbF9kYXRhKTsKPj4KPj4gLW91dF9wdXQ6Cj4+IC0gICAgICAgb2Zfbm9k
ZV9wdXQobnApOwo+PiAgICAgICAgIHJldHVybiBlcnJvcjsKPiAKPiByZXR1cm4gb2ZfZ2VucGRf
YWRkX3Byb3ZpZGVyX29uZWNlbGwoLi4uKTsKCkFjay4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
