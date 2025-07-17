Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78CAFC83F1B
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 09:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3ejYQJoSkB1oZMZXMweSbylqsDOa/SmdEpUZ1XUAUE=; b=OUbDRNpgb2AcSE
	sySannGdPf2kUERyaGH07UG52pzttTgO+tXtcWAaMqWk5g551t2VnELfpzn0iU+ZtvS81DbSd4j+u
	SWX4Mq4gQm7ijjPrIbqib/uHiD6BIrXjQw5eseCCS7F9MrwpP6EnWSRGlLz7fP/VvVZpSj+L7Ew0s
	PkhFJd37ht6V+WojoYc6FCQ/MOgFbybPSD78GWbDooxK2C3Pl3U/5RqZ9p/IaOtQHZc3GcKp6roQP
	MwdwIMr1cnPLFBgPr/iOYFrrN+/RYfayz8AnKQ9sHPJzTUXbMHnrpYe7Fy3ehMQlWMJpI10eAPlm9
	TfyvBflzGMnnvCtRcgng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucKbH-00000009gX7-2BRV;
	Thu, 17 Jul 2025 09:08:23 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucJr6-00000009Z1D-2ic2
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Jul 2025 08:20:42 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3a57ae5cb17so339999f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Jul 2025 01:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752740439; x=1753345239; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aSn1ikrBu2w6g+uJ3D3dKbejXUUZcJbs+RYM3hSQgKE=;
        b=a5iRm9dyXnxWTm8dYSmqzPaHCjQITN8/CPDJ52SrWbQmI13I0r5OUUbmnspU7AaESu
         j8POACC+TC/nWjkbtPXNKR1xq6Tz2dkSLo8qduGhwVn9eD2u7fmyJMrVycsw0MOiw8mG
         m9/Yu5KHJhuOurt8hnNqzejGWQBnNGE0vaP4vIpjYL59AhErY6oOY1D5p97FvbXgFStR
         5dvUckirozFE1gyJ76Mz5z7Q+VPjIaZ+7Dw0HJBkOyoLUNihtdx0biopnsh37x8+S186
         qjKGoX3eLzqx9OVpfT0b8WXFYU5Beu0kMnVS/PPRW2rukdTO4aqooGlmDdm/tyu1ZlyK
         OLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752740439; x=1753345239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aSn1ikrBu2w6g+uJ3D3dKbejXUUZcJbs+RYM3hSQgKE=;
        b=J2seYRIQ1zLEMQkLtX7c7l0dAfs70iPH37D467vUjwprb7z+OlZnzUow+vgJ3cCCGN
         YUqZb3FXpw809EIhvjtS6qqubuHFXQoTGQ10BhVc/8vjGHvw3mQrANhMI5gaUKspwlqQ
         zg6SfHgT1QTAGMF90qRHQJLH9XP0o85YC8GzMc5iUkNoV3moKpD8DsVJGnlLQGG0t70P
         0PyWMxIgbhxBlM7Uza2w9RET5aga2HhGdXL51S0uWbgNIRD7IdY9rj2hfhrrNTboxd69
         RH2bZnvmc5NNmPraQuqitJDkxt+N1hiA2YR+X1janfQiBmAB8T+z2l5JQAOCZv4o/G3l
         Vlkg==
X-Forwarded-Encrypted: i=1; AJvYcCWfuy69nozDI+0PRxfhWJfWSukO10/GJMf24Zz0jlMB/gFSRFfrQwuMnMuWPAIrHYFTNnUG7ahFXyJRffDXQw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUYs0NYhlAW5Kl4sOM+agfamsRyRoeljSijYxLYQE32njowujt
	OIErVj3yZg6FGDoD+0rbU57MRuWV5FDvKqRm94sXHaQjx7WN6gorV5sBanU/qN4zCMk=
X-Gm-Gg: ASbGncuz9dFHqHCa2WxX1N7YMLkU0w1JFPPT9ZcjCxUd7CPwpTGg9HdUvNh5oQQvn7D
	3B1bUXjMdlJafKCPVdVda1U3V0YVVSHqda8iodfmSyDIa4wPMUX+aBpqG/lKNfRnsXiPyhacVOg
	wC/P9zRbfZS2U39P8/Xffq42dUFXjCp8a82ZffB7fjYinPW94JH0W/oN0DC012kXMgzAYUOOD6A
	fIlZiReIF5NkhjraWbc4mC7BNDUD/t0qBsD4wytgdL2nT1LNHSWKB6VntlDvPYSdhJE1558whWk
	89xVSS39qpdZ60VzsjJofVThWvdH8c7UTm/d+TDthLsok3jGJeYMIoHCdmzclN0jA5OFXOv0n6C
	5PIC9PQOvBglWeEIRsWZkaDeXVwrtpJT+pU1gXk1s24UWvYVUrQIgUQ8/KDjthJ0g3qhQ8kF/Pj
	1p
X-Google-Smtp-Source: AGHT+IFrAHuwDARLY/8Ay2Ov5spI2j+L1Q0PXdz00Ci8rMXPWEOFk1gUDBGwxIvEnn/1FaCq6ZYz8w==
X-Received: by 2002:a5d:6f0e:0:b0:3a6:d92d:9f7c with SMTP id ffacd0b85a97d-3b60e4c5212mr5057459f8f.9.1752740438729;
        Thu, 17 Jul 2025 01:20:38 -0700 (PDT)
Received: from ?IPV6:2a0d:e487:37e:ce58:94c8:a752:de4:96bb? ([2a0d:e487:37e:ce58:94c8:a752:de4:96bb])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b5e8e14e82sm20214519f8f.71.2025.07.17.01.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 01:20:37 -0700 (PDT)
Message-ID: <14c91ee4-3a09-4ec9-966f-0d563d7c8966@linaro.org>
Date: Thu, 17 Jul 2025 10:20:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/7] RK3576 thermal sensor support, including OTP trim
 adjustments
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Alexey Charkov <alchark@gmail.com>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ye Zhang <ye.zhang@rock-chips.com>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <aHgHxR1_Gzu8Dwbm@mai.linaro.org> <4178173.5fSG56mABF@diego>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <4178173.5fSG56mABF@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_012040_717235_498A7EC5 
X-CRM114-Status: GOOD (  20.31  )
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

T24gNy8xNy8yNSAwOToyMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgRGFuaWVsLAo+IAo+
IEFtIE1pdHR3b2NoLCAxNi4gSnVsaSAyMDI1LCAyMjoxMjo1MyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIERhbmllbCBMZXpjYW5vOgo+PiBPbiBUdWUsIEp1biAxMCwgMjAy
NSBhdCAwMjozMjozNlBNICswMjAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4+PiBUaGlz
IHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBSSzM1NzYncyB0aGVybWFsIHNlbnNvci4KPj4+
Cj4+PiBUaGUgc2Vuc29yIGhhcyBzaXggY2hhbm5lbHMsIHByb3ZpZGluZyBtZWFzdXJlbWVudHMg
Zm9yIHRoZSBwYWNrYWdlCj4+PiB0ZW1wZXJhdHVyZSwgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBi
aWcgY29yZXMsIHRoZSB0ZW1wZXJhdHVyZSBvZiB0aGUKPj4+IGxpdHRsZSBjb3JlcywgYW5kIHRo
ZSBHUFUsIE5QVSBhbmQgRERSIGNvbnRyb2xsZXIuCj4+Pgo+Pj4gSW4gYWRkaXRpb24gdG8gYWRk
aW5nIHN1cHBvcnQgZm9yIHRoZSBzZW5zb3IgaXRzZWxmLCB0aGUgc2VyaWVzIGFsc28KPj4+IGFk
ZHMgc3VwcG9ydCBmb3IgcmVhZGluZyB0aGVybWFsIHRyaW0gdmFsdWVzIG91dCBvZiB0aGUgZGV2
aWNlIHRyZWUuCj4+PiBNb3N0IG9mIHRoaXMgZnVuY3Rpb25hbGl0eSBpcyBub3Qgc3BlY2lmaWMg
dG8gdGhpcyBTb0MsIGJ1dCBuZWVkZWQgdG8gYmUKPj4+IGltcGxlbWVudGVkIHRvIG1ha2UgdGhl
IHNlbnNvcnMgYSBsaXR0bGUgbW9yZSBhY2N1cmF0ZSBpbiBvcmRlciB0bwo+Pj4gaW52ZXN0aWdh
dGUgd2hldGhlciB0aGUgVFJNIHN3YXBwZWQgR1BVIGFuZCBERFIgb3IgZG93bnN0cmVhbSBzd2Fw
cGVkCj4+PiBHUFUgYW5kIEREUiBpbiB0ZXJtcyBvZiBjaGFubmVsIElEcywgYXMgZG93bnN0cmVh
bSBkaXNhZ3JlZXMgd2l0aCB3aGF0J3MKPj4+IGluIHRoZSBUUk0sIGFuZCB0aGUgZGlmZmVyZW5j
ZSBpcyBzbyBzbWFsbCBhbmQgaGFyZCB0byBwaW4gZG93biB3aXRoCj4+PiB0ZXN0aW5nIHRoYXQg
dGhlIGNvbnN0YW50IG9mZnNldCBiZXR3ZWVuIHRoZSB0d28gc2Vuc29ycyB3YXMgYSBsaXR0bGUK
Pj4+IGFubm95aW5nIGZvciBtZSB0byBkZWFsIHdpdGguCj4+Pgo+Pj4gSSBlbmRlZCB1cCBnb2lu
ZyB3aXRoIHRoZSBjaGFubmVsIGFzc2lnbm1lbnQgdGhlIFRSTSBsaXN0cywgYXMgSSBzZWUgdGhl
Cj4+PiBERFIgc2Vuc29yIGdldCBhIGxhcmdlciBkZXZpYXRpb24gZnJvbSBiYXNlbGluZSB0ZW1w
ZXJhdHVyZXMgZHVyaW5nIG1lbW9yeQo+Pj4gc3RyZXNzIHRlc3RzIChzdHJlc3MtbmcgLS1tZW1y
YXRlIDggLS1tZW1yYXRlLWZsdXNoKSB0aGFuIHdoYXQgdGhlIFRSTQo+Pj4gY2xhaW1zIGlzIHRo
ZSBHUFUgc2Vuc29yIGJ1dCBkb3duc3RyZWFtIGNsYWltcyBpcyB0aGUgRERSIHNlbnNvci4gSW5w
dXQKPj4+IGZyb20gUm9ja2NoaXAgZW5naW5lZXJzIG9uIHdoZXRoZXIgdGhlIFRSTSBpcyByaWdo
dCBvciB3cm9uZyB3ZWxjb21lLgo+Pj4KPj4+IFRoZSB0cmltIGZ1bmN0aW9uYWxpdHkgaXMgb25s
eSB1c2VkIGJ5IFJLMzU3NiBhdCB0aGUgbW9tZW50LiBDb2RlIHRvCj4+PiBoYW5kbGUgb3RoZXIg
U29DcyBjYW4gcmVseSBvbiB0aGUgc2hhcmVkIG90cCByZWFkaW5nIGFuZCBwZXJoYXBzIGV2ZW4K
Pj4+IHRoZSBJUCByZXZpc2lvbiBzcGVjaWZpYyBmdW5jdGlvbiwgYnV0IG1heSBuZWVkIGl0cyBv
d24gSVAgcmV2aXNpb24KPj4+IHNwZWNpZmljIGZ1bmN0aW9ucyBhZGRlZCBhcyB3ZWxsLiBBYnNl
bnQgdHJpbSBmdW5jdGlvbmFsaXR5IGluIG90aGVyCj4+PiBTb0NzIHNob3VsZCBub3QgaW50ZXJm
ZXJlIHdpdGggdGhlIG1vZGlmaWVkIGNvbW1vbiBjb2RlIHBhdGhzLgo+Pj4KPj4+IFBhdGNoIDEg
aXMgYSBjbGVhbnVwIHBhdGNoIGZvciB0aGUgcm9ja2NoaXAgdGhlcm1hbCBkcml2ZXIsIHdoZXJl
IGEKPj4+IGZ1bmN0aW9uIHdhcyBjb25mdXNpbmdseSBuYW1lZC4KPj4+Cj4+PiBQYXRjaCAyIGFk
ZHMgdGhlIFJLMzU3NiBjb21wYXRpYmxlIHRvIHRoZSBiaW5kaW5ncy4KPj4+Cj4+PiBQYXRjaCAz
IGFkZHMgc3VwcG9ydCBmb3IgdGhpcyBTb0MncyB0aGVybWFsIGNoaXAgdG8gdGhlIGRyaXZlci4g
SXQgaXMgYQo+Pj4gcG9ydCBvZiB0aGUgZG93bnN0cmVhbSBjb21taXQgYWRkaW5nIHN1cHBvcnQg
Zm9yIHRoaXMuCj4+Pgo+Pj4gUGF0Y2ggNCBhZGRzIHNvbWUgZG9jdW1lbnRhdGlvbiBmb3IgaW1t
aW5lbnQgYWRkaXRpb25hbCBmdW5jdGlvbmFsaXR5IHRvCj4+PiB0aGUgYmluZGluZywgbmFtZWx5
IHRoZSB0cmltIHZhbHVlIHN0dWZmLgo+Pj4KPj4+IFBhdGNoIDUgYWRkcyBzdXBwb3J0IGZvciBy
ZWFkaW5nIHRoZXNlIE9UUCB2YWx1ZXMgaW4gdGhlCj4+PiByb2NrY2hpcF90aGVybWFsIGRyaXZl
ciwgYW5kIG1ha2VzIHVzZSBvZiB0aGVtLiBUaGUgY29kZSBpcyBtb3N0bHkgbmV3Cj4+PiB1cHN0
cmVhbSBjb2RlIHdyaXR0ZW4gYnkgbWUsIHVzaW5nIGRvd25zdHJlYW0gY29kZSBhcyByZWZlcmVu
Y2UuCj4+Cj4+IFJlcGxhY2VkIHByZXZpb3VzbHkgYXBwbGllZCB2ZXJzaW9uIFY1IHdpdGggdGhp
cyBWNiBwYXRjaGVzIDEtNQo+IAo+IGFyZSB0aGVzZSBjb21taXRzIGF2YWlsYWJsZSBzb21ld2hl
cmU/Cj4gCj4gQmVjYXVzZSBnaXQua2VybmVsLm9yZyByZXBvcnRzIHRoYXQKPiAgICBodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90aGVybWFsL2xpbnV4Lmdp
dAo+IGhhcyBub3Qgc2VlbiBhY3Rpdml0eSBpbiBhIHdoaWxlPwo+IAoKSSBqdXN0IHB1c2hlZCB0
aGUgYmxlZWRpbmctZWRnZSBicmFuY2gKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExp
bmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwK
PGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5s
aW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
