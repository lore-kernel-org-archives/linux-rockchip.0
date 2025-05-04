Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DD10C3ABB0
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 23:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svwLvKawTk1BN4W1yTZ+riaJyK91ng2GqO0iVLuACqA=; b=t52lJc1aamuFng
	6QXybpAOB2E5l6khA/B4qkiwvdDnX4p8bF2qrt9F4X+79gCnN/idNxMiCtuVD/wod7rWoDi85ODpW
	Vhp1i3Cd4UIn+t0pJ7kGWr7HPE1xs9UFr/gKLwhL0G1g/5Bj+3TKvQhjLY0T2OMy2eycGXHpwpWZc
	3z7RYCapXFKiUwLp6KmVxUKCN/Psy2yWbV3hrpr+tqDDb1wXTRhMQJtqXuuJ7DEpJh3L32sdFdGFa
	OCKu20oLJp14WpPUKIY2cA6ZQAVUbfez3vQqauLLymtkh9BGTSjwCNL9ESMRtl7vgz4+B7BeBVEEZ
	v8JelKHF9EMHud5QNArw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBj3p-0000000699n-2oWb;
	Sun, 04 May 2025 23:47:53 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBixj-000000068fx-2ojK;
	Sun, 04 May 2025 23:41:36 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-6e8f4c50a8fso40002366d6.1;
        Sun, 04 May 2025 16:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746402094; x=1747006894; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pT4RA58kZsgWbSkRHLKZhNgsm4pyPu3PviW5NDVxO2s=;
        b=UxG7Ezltz27L383xXbqjq4/wD5RaYBmWaUOFzT1/lIlv6oeQtOp1UAA58Ola8x1gv/
         LCggvOpuRa5NhSUuT9geP+nnH2AIlovcguOXxr2t8B/C6yySOaWyGedBbMhGLmt5T/o1
         pl9MT8pfRrenrcYTsXxfdLlLG8Q9egZaJ1DHIFTBwWOdqEJIBQdDz03FdanXh5intFZD
         FQyZ2TDV7OYsyPU0Hbv9zwst/q7pZ7DZzS/V8JP+RbF67zVGkEIpx7jnI0vCOKBpEFgl
         EDBYC/QYe0rnkhbj+2M0KyJJB+JHAPYzrNutyuVDC5FV/Tdar+dxf5Oz8Z9uwjpUi26y
         qYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746402094; x=1747006894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pT4RA58kZsgWbSkRHLKZhNgsm4pyPu3PviW5NDVxO2s=;
        b=D5CXxu0w4jeHUmBCbyWPe/V703WPxuI6z9pJCMLWK38OONDzZLFsRXasN6p0mw2+SU
         X50c5LlFImjui0EXj8N/Dpq0Usor+RJdIotv+vh4TGog2LYhDm4+XV8mIFXVKXWRG5sP
         Zh1Z/XXn89iGxelnyLYqHhNpJ5g+IWDntT3crdNN/iczMU8HzmdKGnfsfUvVhgn0pck4
         o3lYruu2L+Zqof1Zzjh1mzGCZzvaBilIWhVj8ev9bpaLb9DzhKL6gmrI89pnzEZTsL/0
         FIuNwiHESYWTAtThIuOo0mnP7Lq28bie3u5TfV0OEp4tVHy/hm8hGLwXTd5C92f01IJi
         sYSw==
X-Forwarded-Encrypted: i=1; AJvYcCWbO75aUul5qbGzFkLoPOVnVpSz6C2r39sD7pU2r9ZUFdTmGYRsWgULJ94xmZt6nqSQfMewCdnpX5W+/5cdLEkp@lists.infradead.org, AJvYcCXPzfc1hd7KCcIxCCOyn2oaSlAOaD5aEnxYVeOgs2J7VHOd/pbyPYXawQRRGS3FF8QIC2XqRON+QEuFOjvQvNc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAf3gnSpzQlcW8scZhcGIQD2TJX2ngLhIoF9fg8pSNaraqns5y
	v7u6tqOOMqqrVivL5nszLVq/a5en7B1S6SlQC1rpDtgPk2BEM5ZQ
X-Gm-Gg: ASbGnctKady+SirUKqXLSXxv+iLYlmLF6VLzIe+VVohT0ClM7xWAC9wOYxUfuRv00bX
	IdJ27gJ/4Tfiiz5crFzcvZZtwxaY1fv6r5ComDG3O/9e+4QwLPZz30DxCUyhMvIszZSopQeifuX
	5KcvZAzFUZidyGhBoXSxLZiqH9gT4+ay2n7YuSxXE2+jyi0Az0pToFxR9gOIs4vokPV53NJQRhT
	5moo8UVMvIK/pAfKfF+ZwDfd5Zq/s633W37rOJ9kvTbN/Hefj9fxgTtuH6YXLPEoxO2Kt4a5Xvk
	gF637DfiZp80DndpbEn7OjO3bNN6Zg4d8C3wUjr4YcxHZCSDhdLkS+uC4/lDHw==
X-Google-Smtp-Source: AGHT+IEuS32WQXdYrsUKx3W6fkH04iM3f+qJZnWVRNzxohjJqcepLThyrNOUzuchkb36omAniuxWKQ==
X-Received: by 2002:a05:6214:d83:b0:6d8:9c92:6555 with SMTP id 6a1803df08f44-6f528cf17f5mr81249826d6.29.1746402094429;
        Sun, 04 May 2025 16:41:34 -0700 (PDT)
Received: from [192.168.21.149] ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f50f3b05b0sm48091906d6.1.2025.05.04.16.41.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 16:41:34 -0700 (PDT)
Message-ID: <46cbdabd-b0ed-4c9b-9f01-4d2d8eceac24@gmail.com>
Date: Sun, 4 May 2025 19:41:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
To: Andrew Lunn <andrew@lunn.ch>
Cc: Jonas Karlman <jonas@kwiboo.se>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, detlev.casanova@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
 <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
 <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
Content-Language: en-US
From: John Clark <inindev@gmail.com>
In-Reply-To: <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_164135_714520_ECF281A3 
X-CRM114-Status: GOOD (  15.64  )
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

T24gNS80LzI1IDc6MDEgUE0sIEFuZHJldyBMdW5uIHdyb3RlOgo+IE9uIFN1biwgTWF5IDA0LCAy
MDI1IGF0IDA1OjAyOjMzUE0gLTA0MDAsIEpvaG4gQ2xhcmsgd3JvdGU6Cj4+IE9uIDUvNC8yNSAx
MDoxMiBBTSwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4+Pj4+ICsmZ21hYzAgewo+Pj4+PiArCWNsb2Nr
X2luX291dCA9ICJvdXRwdXQiOwo+Pj4+PiArCXBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeTA+Owo+
Pj4+PiArCXBoeS1tb2RlID0gInJnbWlpLXJ4aWQiOwo+Pj4+Cj4+Pj4gU2VlIEFuZHJldydzIHJl
bWFyayBvbiB2MSBvZiB0aGlzIHBhdGNoLgo+Pj4KPj4+IEhpIEpvaG4KPj4+Cj4+PiBJZiB5b3Ug
aGF2ZSBxdWVzdGlvbnMsIHBsZWFzZSBhc2suIEl0IGlzIG5vdCBhIGdvb2QgaWRlYSB0byBzaWxl
bnRseQo+Pj4gaWdub3JlIHJldmlld2VycyBjb21tZW50cy4gRWl0aGVyIGRvIHNvbWV0aGluZyBh
Ym91dCBpdCwgYXNrCj4+PiBxdWVzdGlvbnMsIG9yIHBvbGl0ZWx5IGFyZ3VlIHdoeSB0aGUgcmV2
aWV3ZXIgaXMgd3JvbmcsIGJlY2F1c2UKPj4+IHNvbWV0aW1lcyB3ZSBhcmUuCj4+Pgo+PiBIaSBB
bmRyZXcsCj4+IFRoYW5rcyBmb3IgeW91ciBmZWVkYmFjayBhbmQgdGhlIGxpbmsgdG8gdGhlIFJH
TUlJIGRlbGF5cyBkaXNjdXNzaW9uLiBJCj4+IGFzc3VtZWQgeW91IHN1Z2dlc3RlZCBzd2l0Y2hp
bmcgdG8gcGh5LW1vZGUgPSAicmdtaWktaWQiIGZyb20gcmdtaWktcnhpZC4KPj4gVGhlIHZlbmRv
cuKAmXMgZG93bnN0cmVhbSBrZXJuZWwgdXNlcyByZ21paS1yeGlkIHdpdGggdHhfZGVsYXkgPSA8
MHgyMD4sIGFzCj4+IHNob3duIGluIG15IHBvc3QuIEkgdHJpZWQgcmdtaWktaWQgYW5kIHJlbW92
ZWQgdHhfZGVsYXksIGJ1dCB0aGUgaW50ZXJmYWNlCj4+IGZhaWxlZCB0byBnZXQgYSBESENQIGFk
ZHJlc3MuIFJldmVydGluZyB0byByZ21paS1yeGlkIHdpdGggdGhlIGRlbGF5Cj4+IHJlc3RvcmVk
IGZ1bmN0aW9uYWxpdHkuIEFueSBhZHZpY2Ugb24gY29ycmVjdGx5IGNvbmZpZ3VyaW5nIHJnbWlp
LWlkIG9yCj4+IGFkanVzdGluZyBkZWxheXMgZm9yIHRoaXMgYm9hcmQ/Cj4gCj4gV2hhdCBQSFkg
aXMgaXQ/IEFyZSB5b3UgdXNpbmcgdGhlIGNvcnJlY3QgUEhZIGRyaXZlciBmb3IgaXQsIG9yCj4g
Z2VucGh5Pwo+IApNQUUwNjIxQS1RM0MKaHR0cDovL3d3dy5tYXhpby10ZWNoLmNvbS9wcm9kdWN0
LzEyOTI4LzEyOTI5LzEyOTMwLzEyOTMxLmh0bWwKCj4gcmszNTc2LXJvY2stNGQuZHRzIGFuZCBy
azM1NzYtYXJtc29tLXNpZ2U1LmR0cyBzaG93IHRoYXQgaXQgaXMKPiBwb3NzaWJsZSB0byB1c2Ug
dGhpcyBTb0Mgd2l0aCB0aGUgY29ycmVjdCAncmdtaWktaWQnLAo+IAo+IAlBbmRyZXcKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
