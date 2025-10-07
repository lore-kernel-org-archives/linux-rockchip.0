Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCC6DCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 05:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJh83+dIjE1PCvNCJMFrLIyiNJxOd9ABCyf6loHOIks=; b=Sm254D7nAa5NFf
	8Ek1zmPNt18SRx4LR1InKcneqxXEoZuj2ejfjMBD8PzITL35zF9mDvwk6sEuVAYwT6b599rrH9VW1
	meL1sMyPxkHyqkumpwjSpnIRrue9s+R5bQUzh/5ZOQ63DTQJlacVhykkx9/KH5Wso4agEAFYjVwzO
	/ljc1SeM6ZDkX8+tYm35U01ZBPsZOZGoWKnIgbjr45+u8OvVCNRC/cAR9fQy3myKu+2+L3GJG7PtL
	MW8P2XSk3p9QKgMCbz0/WPW8CrDALMr/+Dr56e6bveV+Tnfp/FwhAOFQhyh7MQBhTJmLkM4750sWl
	xIehCS1BspiCuilQahTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v60jI-00000001KQc-09A0;
	Tue, 07 Oct 2025 05:59:20 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v60jE-00000001KPJ-46ao
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 05:59:18 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-b554bb615dcso4324695a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Oct 2025 22:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759816756; x=1760421556; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TY1Z3zjE2hmR/H8RZQ8GW2E7K5sHv4uVwuJ09oV8pME=;
        b=cDErINHYzYGhhyxwVmr95J52tjS80sr0NnRXYOJ5FYcqrOh6KxY7ERhP/KdETiA30U
         XArGfAQBU/pv5QRzBW3t+YXAjargpRyf7lwfmOgQvLcGSewlUfwp812xrLQP+cm9B9m/
         pwwMs+aWCccJ/WWqo8KTWGPDHVtNnTzma8XFndUma3CjJCWkBe6JMnLNAiO7RMtHarN3
         c2hQ0pRbGbBNHRFckpo8WE2gdYpMWMii3Ehyw+XQoYSt9wcrHW9i9QA2iZCImjdK7Rzy
         eLUCPIcMDYUDJ4MvItLdPv5YzUpXrdpdrsz222pqdJUgFq6JpD1ze1KkU+Q5xGUnuBuf
         qfYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759816756; x=1760421556;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TY1Z3zjE2hmR/H8RZQ8GW2E7K5sHv4uVwuJ09oV8pME=;
        b=UKWXa3D/hnmDwkOZu5DRqM97mksDAME0UeZd50uvtTUZYyQipSZMhTI7GBtqiXmccU
         r9dyFF2q1oQOWUkcKXPzXDF5L38dm8vjH9ZyGTi/2uBvStfZXclb7y7fSGn0Drr0zM95
         ItN3NV2W5eFipifc6o31AH4cXtA3BZRKkrVdDGukmUn+ARwn5x/L8CRTjR6GqSYWYLnc
         Z4oXzO/izxItQoR8G8TYaIaFRnhYa8TwCM8K36NN6oOVlXKjtZQz/dF1Cytb28utOadY
         NT9ZA19Ngwt1/n+Ac3tJKfFrP0haCFwm/CYwjpib/r2kiM4iW+sdKAzcOqz9BPGMlUo/
         iQ3g==
X-Forwarded-Encrypted: i=1; AJvYcCXECS217bt8fmdaIN1yFyHvzMYPym7yGmABdxIsi+q9oZk7wWBDcNfzeNqjEzYxogATMx88xeUZGdTxTAnoIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJ0BBmMZwhNICMC0ERVPHhVAIRiT+m9aSjcE1xvW4f+ycZ0YIw
	YMomCP+TAOiNuQQWEYQSLov7zZVVzK2ZrpUG2s2M6QXfw4uC+T9z1S6v
X-Gm-Gg: ASbGnctdOoAu37ZO++auLbPYtXH4TvoPpUrl5wow2+WNc2sK3Ns8uKhP99v0QbddPSg
	qqnWhluyJaFAGBp+gOgshGR9Uylc8jgDGT+yN2zmiGDhztZ6IWOmUWtGP9eYQWfXfabtJ3nVJin
	iwQ0h5C6xaLRuMUza2Rqz8WZ7uZXklvXKVNFtZozoUqjwgehRa2fRCbwMtF0ksoFAnQyXzsPf9d
	cAYFzN15AG5GKfse2Ap5qungJz3JsxxRld0Q2jLjTb225YNwiKtnZgjgBehAJ24vymvMTN8wH2X
	Bw0EtDqcxkr0ZHn1UmQipBkZ8WOm87djGE3ZKJmZBe/ci+yYLGwa+GcSZlLQhxG8y6G+cbx+hM6
	XmDQmaI9P++F/Gzpe2axyThW2kP85aEW9rkK4xJkkide6UsQ6EqV3lbNyjqbyX3O4jBR21s+QQ/
	brCYrGY+DYxsdJi960muZ7zWjX
X-Google-Smtp-Source: AGHT+IFlzsudHAIxUbF3d9k5TBWY8zUqb3RirQ/wOsrjbntDRjbfjMsD2j/0ZFEZEcTWL9AWUFx/Eg==
X-Received: by 2002:a17:902:f708:b0:27e:ef27:1e52 with SMTP id d9443c01a7336-28e9a6aa8ddmr160679545ad.35.1759816755990;
        Mon, 06 Oct 2025 22:59:15 -0700 (PDT)
Received: from [192.168.68.62] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d135cdcsm151111185ad.59.2025.10.06.22.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 22:59:15 -0700 (PDT)
Message-ID: <7476a26d-c629-49a4-ab47-eaffda482782@gmail.com>
Date: Mon, 6 Oct 2025 22:59:14 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] arm64: dts: rk3399-pinephone-pro: Add
 light/proximity sensor support
To: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ondrej Jirman <megi@xff.cz>, Martijn Braam <martijn@brixit.nl>,
 =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
 <20250929-ppp_light_accel_mag_vol-down-v4-1-6598f22d3451@gmail.com>
 <DD5714TDL1NA.26WS3YF7EMZ5I@cknow.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <DD5714TDL1NA.26WS3YF7EMZ5I@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_225917_049489_61ADD435 
X-CRM114-Status: UNSURE (   8.91  )
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

SGVsbG/CoERpZWRlcmlrLAoKPj4gKwlzdGszMzExIHsKPj4gKwkJc3RrMzMxMV9pbnQ6IHN0azMz
MTEtaW50IHsKPj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QRDMgUktfRlVOQ19HUElPICZw
Y2ZnX2lucHV0X3B1bGxfdXA+Owo+IE9uIHBhZ2UgMTEgYW5kIDE3IG9mIFBQUCBzY2hlbWF0aWMg
VjEuMC0yMDIxMTEyNyBJIHNlZSBMSUdIVF9JTlRfTCBhcwo+IGlkZW50aWZpZXIgc28gaXQncyBi
ZXN0IHRvIHVzZSB0aGF0IGlkZW50aWZpZXIgaGVyZSwgdGh1cwo+IGBgbGlnaHRfaW50X2w6IGxp
Z2h0LWludC1sIHtgYAo+IGFuZCB1cGRhdGUgdGhlIHBpbmN0cmwtMCByZWZlcmVuY2UgYWNjb3Jk
aW5nbHkuClRoYW5rcyEgU2luY2UgdGhpcyBpcyBhIHNpbXBsZSBjaGFuZ2UsIEkgd2lsbCB3YWl0
IGZvciBtb3JlIGNvbW1lbnRzIGluIAp0aGlzIHBhdGNoIHNlcmllcyAod291bGQgbGlrZSBjb21t
ZW50cyBvbiB0aGUgbW91bnQgbWF0cmljZXMgZm9yIHRoZSAKYWNjZWxlcm9tZXRlciBhbmQgdGhl
IG1hZ25ldG9tZXRlcikuIEkgd2lsbCBwdXQgdGhpcyBjaGFuZ2UgaW4gdjUgaWYgSSAKc2VuZCBv
bmUuCgoKVGhhbmtzLAoKUnVkcmFrc2hhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
