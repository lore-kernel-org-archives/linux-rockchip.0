Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4F5DC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 04:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruVX4aLTCTEVqHI5nde9yScsb3vNEpPA5K/vYjhXFs8=; b=JnfyL4xJ+Ulgdr
	yrmtj/0JCbVSkYzxm8ayBMAo0aK1v2sndxU0iJ551fX7PG/t5Z4nFyTSrPHBf+Ha+B1iTjXDrYaky
	Ws4lZZtk3mczNkjsSl3jxGUU5jF55/wh7xs04J5K3y4zoPNFdGxLpBi/ancjFl9DgJqPR66jqwiQR
	0Fhk0kNEFSqgKXo6bQaVIzxCGZKSgJgN1CWiY5RLYR9293sxwyIEckcjdZAi/urpq8kypTUgA7lw3
	rSKo7Kz9J+LBhd7SGaoIeJ+9FcD3XUc12N9T9Cs7CBbGfhbR878KOCt6WnJxmcxl654mAThM/Fkc4
	ncgf9AsiS0aZ+k6feHpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBSny-00Ei5f-23;
	Fri, 08 Dec 2023 04:49:38 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBSnu-00Ei4f-2x;
	Fri, 08 Dec 2023 04:49:36 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-77f4b8bbe0eso25599485a.1;
        Thu, 07 Dec 2023 20:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702010971; x=1702615771; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=apbHXdcSkWFBXKUAUvZ/rPX7atQuNqUO/5Wd48wSoY8=;
        b=kptsZC0x12gTxUt7n5YPV1lDwZTzY2YBApoEkv459TQrpTZjgqti6fmmpjkGQ/1iQ+
         9Q74+5yeKVkxqqaEkheA2rVhpwgMSAzXrcug1+VmPdQ6/WBlc3UHReWJhfdKYVS5iThV
         R6Hl8etuowin9pdVBGh1w13TS4tYWGf2nCVX6pi/4clhdp8n8k2vGHiXckda9ffKEqC4
         QQP0MxdvEUDuC50ZyI+eBNDLU16oSDa7p3G+i9Ed2C+VweUvsHMDtHIR7CQ84kUURBe3
         KAKCKQz/BsimUr+LuwhM1m3bNeL3o3QPib3fCOYpyvOdJxfko4kpec0Rs7XMq10LJPy0
         1NRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702010971; x=1702615771;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=apbHXdcSkWFBXKUAUvZ/rPX7atQuNqUO/5Wd48wSoY8=;
        b=K5rPl6vYTX5EloysLSRAW4Yi7M/3BFUtIzYoH/9n+Yt6D1+pSkjpdjtGYbbL1aNA/p
         hxvDqJv1jc4XaaY2WspKu/LNHVG1mrwsb9fZ7OIMVWm27bfJ4sZ0aHxnP5Nn0rwGM9sF
         KDzLHYC9/NNW79swIAwKTRhar4+vKLzTLlP9ffMe/ven4hzjW7KC3qZUSSdq2L2D6uFt
         4nhvNFzCJtZsNDlj2Dlh541UnG/KXAY0kVzdMRh23gMX1P7pFVYw2AbXtCm35bU5VLid
         x8mrri9rrm1iK5N6zAqJVOnQ/Jq0Qp0+NpT/+BYd2CyFpwJ0gAExnSWseMmtwusc6esh
         3I5g==
X-Gm-Message-State: AOJu0YxCBK2P18USWZ0+IcXs65RQD7ztrNTIK6VkvclqHR2AwFiC+Nf0
	ZWfl2ZS7Oo3oPALi/vts9rg=
X-Google-Smtp-Source: AGHT+IHq72s0wgGAvlMpxJLJd+XXO/O95qju15WYNJhjJW585DNkO2Ri0Krk3Gye/yGNGCVuvcwysQ==
X-Received: by 2002:ad4:56e3:0:b0:67a:a721:82ff with SMTP id cr3-20020ad456e3000000b0067aa72182ffmr3641641qvb.89.1702010970841;
        Thu, 07 Dec 2023 20:49:30 -0800 (PST)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id h10-20020a0cedaa000000b0067a22a8564fsm479353qvr.140.2023.12.07.20.49.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 20:49:29 -0800 (PST)
Message-ID: <a3f24fdf-946c-4253-956d-4d345decdeb6@gmail.com>
Date: Thu, 7 Dec 2023 20:49:25 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Cc: Andrew Davis <afd@ti.com>, Andrew Lunn <andrew@lunn.ch>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 workflows@vger.kernel.org, linux-doc@vger.kernel.org
References: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; keydata=
 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
 HGuUuzv+GKZ6nsysJw==
In-Reply-To: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_204934_961975_E3B5589A 
X-CRM114-Status: UNSURE (   7.45  )
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

CgpPbiAxMi8zLzIwMjMgOTo0NiBBTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBEb2N1
bWVudCBwcmVmZXJyZWQgY29kaW5nIHN0eWxlIGZvciBEZXZpY2V0cmVlIHNvdXJjZXMgKERUUyBh
bmQgRFRTSSksCj4gdG8gYnJpbmcgY29uc2lzdGVuY3kgYW1vbmcgYWxsIChzdWIpYXJjaGl0ZWN0
dXJlcyBhbmQgZWFzZSBpbiByZXZpZXdzLgo+IAo+IENjOiBBbmRyZXcgRGF2aXMgPGFmZEB0aS5j
b20+Cj4gY2M6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiBDYzogQW5nZWxvR2lvYWNj
aGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4K
PiBDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiBDYzogQmpvcm4gQW5kZXJzc29u
IDxhbmRlcnNzb25Aa2VybmVsLm9yZz4KPiBDYzogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGtlcm5lbC5v
cmc+Cj4gQ2M6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4K
PiBDYzogSm9uYXRoYW4gQ29yYmV0IDxjb3JiZXRAbHduLm5ldD4KPiBDYzogTWF0dGhpYXMgQnJ1
Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KPiBDYzogTWljaGFsIFNpbWVrIDxtaWNoYWwu
c2ltZWtAYW1kLmNvbT4KPiBDYzogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFy
by5vcmc+Cj4gQ2M6IE5pc2hhbnRoIE1lbm9uIDxubUB0aS5jb20+Cj4gQ2M6IE9sb2YgSm9oYW5z
c29uIDxvbG9mQGxpeG9tLm5ldD4KPiBDYzogUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21haWwu
Y29tPgo+IEFja2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9y
Zz4KPiBBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBSZXZpZXdl
ZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29t
Pgo+IEFja2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWR5YmNpb0BrZXJuZWwub3JnPgo+IFJl
dmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+
IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmbG9yaWFuLmZhaW5l
bGxpQGJyb2FkY29tLmNvbT4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
