Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ADBACF6491
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 16:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3cew+bbG9i0EQDS37mI5q0n7H1G1xOIqQSMCxF4TrE=; b=e1nTKSTXWJhBTY
	JKSsw8nyY7q4qiLn88S1xLoaJtda8zNSLejdzyI6g3ythDQwsGgrQ72/U7Nv6y55UMmCc03EFZxet
	4+94Q4PwkSeMeplX3zbi5H6VbJjPSuSl80jXqiX0bj386mwp1gwWD0+hds/NpslW2Pp/PBS5deuKJ
	fjbM6awXDrxKSidi7wwmbt4rqk9hTjNha1IRj6x6HKXYuNuAd4iJUFA8MNE3tEMAXxHB3nHa8nhqg
	QfKdaG/A1PDnW+wfkNV6tRH78NzAsvWuMUnQL+eCAIK4Q2mEjTyYlKdUyb0aqYK2KxrakPqrEp7fu
	VNOEB+oXg1V15g8RsShw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suaV9-0000000DLrs-1etM;
	Sat, 28 Sep 2024 16:40:59 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suaTw-0000000DLmQ-42z6;
	Sat, 28 Sep 2024 16:39:46 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2e053f42932so2345807a91.0;
        Sat, 28 Sep 2024 09:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727541583; x=1728146383; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=kvzo9Dw8yCMA498VifiVQ3iKuvGDh2Xe6iIAnfkituk=;
        b=TDVHQ0i64f7LhtDdPWoTEjoUj63F6WNU9MlAxF2Mly8iC/JpSObBTiu0HocM5jiOqs
         WUW4Cy2WCQELfR2FTu2DzPBbjcQebvPTgRK7mXp+lKpeYLQJiToU9JYnIgmO4O5GkQdK
         WliueG/F+d+H956oG+rwkC9IKcg2akl1f86JnoPhNJ1i12lWgT0AH6sgo5yRlhY24tD9
         XltxzJvPkPlxFdnr7o87sYcv2MT6AMlktOcjJocffxVjqIIu2PxI5gcP3oA5jJLLpzRa
         JsKCNO5QCz4Taymj7iUSajAppaQ/j1zYrMqQnVobZOZuKtbKFR4tXg/FFVwNwrc4hG64
         D/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727541583; x=1728146383;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvzo9Dw8yCMA498VifiVQ3iKuvGDh2Xe6iIAnfkituk=;
        b=qgVspgkIUhc4kW/GnUIsShTyk+7eR4MI3Px+dBdpScAk7oS/y3NHYPufbAElKu54Yp
         6GXqxDOWfx+GViUqaMB1UVI4n0HKzPRdAgSVDAdWpkPD2IScSo8i0c3ClJrdiR6XEdbE
         fEMhL0+NwGeAcgdYJiaRw4ThE1X16mEj8BZ9EoFeWcXnZhO7yUk4IrXyraX/G6ktcCdp
         fmBMqjT+KkRf3OpV/mSaTuTBtZwiULgevkfKjFLMbAcfKzyQXvnD+wBty+xecUqIKqdQ
         hdsajqLRgtnShv0giWsNIJs7diiepff1hYM+Cz+CIYcYxz1cOhOxhQtCRBLVHtI5L0So
         m64g==
X-Forwarded-Encrypted: i=1; AJvYcCUOB7u+nU3WRPWB98gHvdAVnMUTbdh9mEUWDZUwNt0i5B/e4lVmLbchOHMAfWjj7X5MySZa2RnSELKjCkTWWE1v@lists.infradead.org, AJvYcCWdgQI3wB4i9Xlwgoq0zhe1TtEL67SpUFRDPK5/sozVEKG3qYVXP0GeaeXMvZZ81trkArMN/1AKUi85vq4l4aM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZNEeWDSyaogXuXA0O4cIrD1CMKeO0ZyHmlm6GPQbWg1FdaRcn
	zek211C28Du3Vcn6UZlHrxPslMyurTLLenNVNFvAzFYaWflwQriJ
X-Google-Smtp-Source: AGHT+IEZbz4+NfKVIi4mSbv0u3LAU6sOozSBItqjzEJ0I7r/FltLIFmJfkdL1HWxN0IK7RD0P60HxQ==
X-Received: by 2002:a17:90a:c790:b0:2d3:cd5c:15bb with SMTP id 98e67ed59e1d1-2e0b8ebd993mr8064593a91.25.1727541583240;
        Sat, 28 Sep 2024 09:39:43 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1046b8723sm450453a91.14.2024.09.28.09.39.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Sep 2024 09:39:42 -0700 (PDT)
Message-ID: <4717815c-7d56-450f-8974-15c5ba245aa2@roeck-us.net>
Date: Sat, 28 Sep 2024 09:39:40 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/8] dt-bindings: hwmon: add support for ti,amc6821
To: Farouk Bouabid <farouk.bouabid@cherry.de>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>,
 Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240906-dev-mule-i2c-mux-v8-0-dbd28a150e41@cherry.de>
 <20240906-dev-mule-i2c-mux-v8-3-dbd28a150e41@cherry.de>
 <df6b9303-155e-4796-adb2-e05c7e76e289@cherry.de>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <df6b9303-155e-4796-adb2-e05c7e76e289@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240928_093945_028979_1FAEA8DD 
X-CRM114-Status: UNSURE (   9.82  )
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

T24gOS8yNy8yNCAwNzo1OCwgRmFyb3VrIEJvdWFiaWQgd3JvdGU6Cj4gSGksCj4gCj4gT24gMDYu
MDkuMjQgMTc6NTQsIEZhcm91ayBCb3VhYmlkIHdyb3RlOgo+PiBBZGQgZHQtYmluZGluZ3MgZm9y
IGFtYzY4MjEgaW50ZWxsaWdlbnQgdGVtcGVyYXR1cmUgbW9uaXRvciBhbmQKPj4gcHVsc2Utd2lk
dGggbW9kdWxhdGlvbiAoUFdNKSBmYW4gY29udHJvbGxlci4KPj4KPj4gUmV2aWV3ZWQtYnk6IFJv
YiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEZhcm91
ayBCb3VhYmlkIDxmYXJvdWsuYm91YWJpZEBjaGVycnkuZGU+Cj4+IC0tLQo+Pgo+PiBOb3RlczoK
Pj4gwqDCoMKgwqAgTWVyZ2UgYWZ0ZXIgcGF0Y2ggMQo+IAo+IFBhdGNoIDEgaXMgbWVyZ2VkIGlu
IG5leHQtMjAyNDA5MTAgYW5kIGl0IHJlcHJlc2VudHMgdGhlIGRlcGVuZGVuY3kgcmVxdWlyZWQg
Zm9yIHBhdGNoZXMgMy4gSSBndWVzcyB3ZSBzaG91bGQgYmUgcmVhZHkgdG8gbWVyZ2UgcGF0Y2hl
cyAzIGFuZCA0IHRocm91Z2ggdGhlIGh3bW9uIHN1YnN5c3RlbS4KPiAKCkknbGwgZG8gdGhhdCBh
ZnRlciB0aGUgY29tbWl0IHdpbmRvdyBjbG9zZXMuCgpHdWVudGVyCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
