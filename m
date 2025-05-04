Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0F67C369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 23:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4hn1Vi4SHtf7oqSXjkP5DMSjaNietc2ViEu1mGWyTfY=; b=WYbzRvAuruE7HN
	wWsUQiJ0qJi8Lq91RUFiGmHi4CV0dW5bMLuuzebmnh5rQ0nGkASPfokfkq2hrjnCGKaaarcKpLR8u
	5mDbZssYQxPgGXjzds9xBdpmS9aVv23FdAsSDJBMn4LR0ZctWEYuXJdw+Hi/rBRf37fOle51Gme5r
	HySUOS5tpJoXShd5KNwGrMYvsKc5ZrMLhc6kadpOOlRUxq6vARV3n6hmLchfJ6cBpJiKzqSb9TpIS
	HbimCI/nPG9ium4QH66icwec2rwkEZtmyGqddZ1lu5Pln1q/A9Pfz4Xg7v6wzwEssw8hH9cWriYqW
	nNTid8cgjLgLIoFtnN7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBiPa-000000066Cs-0oJM;
	Sun, 04 May 2025 23:06:18 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBiPY-000000066C9-0HFI;
	Sun, 04 May 2025 23:06:17 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7c54f67db99so572137085a.1;
        Sun, 04 May 2025 16:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746399975; x=1747004775; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WG5Q7M6LXC8ceUGjLsv7jt8ZOhJNoErjR02gyORXoXA=;
        b=OqW1qw2bB0pvsHsqs/2h8LYN4MHQQ4hHyB7sWZ03KGxRGOrWXBseIQw3FHgqrjdpuc
         td5zwZNXlujMuWoR3DbfG4vQwn0ub/Gp8In1gYTgnsCdxFneUfx8W6kAOsfv97cjZBHO
         l9DxIu2Pq3MyAm/P1rrTA3LM9nBvXc4on8DLqXjslT93ysCeRYqCCqmGZitpCrkafnfL
         hDwqeDJmRztLvJp+R6j2ERslMBQRPZ0rmH8ugqcOoURM16VsVvEiZiFy5RQ5G8+OcUtY
         GGRojuOJi1jv9YrTZ1Fxw/wAKhKB1iVv47y8DHsnvKjxwTO3A6l0lPCO9NpHDqQmB9MU
         jU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746399975; x=1747004775;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WG5Q7M6LXC8ceUGjLsv7jt8ZOhJNoErjR02gyORXoXA=;
        b=WRiacPQ426jKMOX+MaHOUAEt0zi5md4rCXPiz9AvRHWgH+bxW7dfvckbchyN91nkTD
         Kkc33SyEb3ocH1JYFq6O/aUmpdZboav8u4XUtm8BPXt3U74wFqlVlEJ93tDf+H7pMLC8
         +XBUgHsT2Qfzk/A3xR/Od/b9oa+fs9Y8nClQ1Gwq/CCtygmjyT1d9CSmhKV1Bv9qMxyd
         6AzxzKSu0srwn4Srzul50hLp+mDyVYGw58wfOexKWwra1mP/DJ1QVB2NUzcAHklA1J+g
         mQ3DCt3q8v32H45lo0iSXDtysCknV4DLGaAEC83A/iMSVmwPF/A4arwDH90mHrj5X/uR
         zMpQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2QyIF1r4YVWY26ejTimokpo0VRBNkztYogOTfMhJ/+BL+zhK2MR81O4kyaOAFl57sD8KHzkofQ448s6NkqpY=@lists.infradead.org, AJvYcCUpypKmqtKXfgkTJgxOxEd42jTJFE1SFc0RClFSD0T2K89YO5ZQcw+AcbTDFLF1RloiTs8MMs2em37llQrd88sP@lists.infradead.org
X-Gm-Message-State: AOJu0Yxbgzuxh2C4E8SB+Z11YZSsikyaN5Hrgz45RJZr3wzEgxExg5WN
	regq+N1PXaTi35A48wMu4fJLo+kTmO5uEk7GOyADabUHi8LS8aYx
X-Gm-Gg: ASbGnctWPHLG6Y3dP+YKbW1tD3/5HqjCxPnSVo6BY2Mlp/hh0lfYdfeFjIlr2uy98XR
	xndW1QsNGnMLAblB18XLQ5vp4OFXw6BWBPy5F9vD5pD1YagmyYPSn6dRJv0T8RvCoWELLsxGoD2
	SqRTn62YUc0LDs55PaYIXYMUtSgzNP7p1eFFIqt7XojhvHWMep8/Z9XnXUpiX9PghZ+LP00sjqD
	S8RttvXtnXSWW6cF23FXtDdsgqzS4BV9F2p+ILzIBkBfxAmKmlRJAnI4BqnnsFWDHOCYoU7583z
	PkIz6nwrHjYF0maMyH+/VRnK7eke159/mY92oa/GM3+8ubhpKGZMaOuxj/f/4A==
X-Google-Smtp-Source: AGHT+IGXVOmqNZtnqI0MebY7SuNjt8ChHjXmPGL86trlt2xMX3O3Zn4OdIXuAF3VZCOaQ2cofukTSA==
X-Received: by 2002:a05:620a:1995:b0:7b6:d273:9b4f with SMTP id af79cd13be357-7cad5745825mr1588016285a.11.1746399974646;
        Sun, 04 May 2025 16:06:14 -0700 (PDT)
Received: from [192.168.21.149] ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad23b530bsm490164385a.6.2025.05.04.16.06.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 16:06:14 -0700 (PDT)
Message-ID: <547dab4c-a96d-4196-a092-ca409e2ca8c5@gmail.com>
Date: Sun, 4 May 2025 19:06:13 -0400
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
X-CRM114-CacheID: sfid-20250504_160616_126113_BC7BBD90 
X-CRM114-Status: GOOD (  16.25  )
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
Z2VucGh5PwogPgoKVGhpcyBmYWlsczoKCiZnbWFjMCB7CiAgICAgICAgIGNsb2NrX2luX291dCA9
ICJvdXRwdXQiOwogICAgICAgICBwaHktaGFuZGxlID0gPCZyZ21paV9waHkwPjsKICAgICAgICAg
cGh5LW1vZGUgPSAicmdtaWktaWQiOwogICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
OwogICAgICAgICBwaW5jdHJsLTAgPSA8JmV0aDBtMF9taWltCiAgICAgICAgICAgICAgICAgICAg
ICAmZXRoMG0wX3R4X2J1czIKICAgICAgICAgICAgICAgICAgICAgICZldGgwbTBfcnhfYnVzMgog
ICAgICAgICAgICAgICAgICAgICAgJmV0aDBtMF9yZ21paV9jbGsKICAgICAgICAgICAgICAgICAg
ICAgICZldGgwbTBfcmdtaWlfYnVzCiAgICAgICAgICAgICAgICAgICAgICAmZXRobTBfY2xrMF8y
NW1fb3V0PjsKICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwp9OwoKJm1kaW8wIHsKICAgICAgICAg
cmdtaWlfcGh5MDogZXRoZXJuZXQtcGh5QDAgewogICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiZXRoZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIiOwogICAgICAgICAgICAgICAgIHJlZyA9IDww
eDA+OwogICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IFJFRkNMS08yNU1fR01BQzBfT1VU
PjsKICAgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogICAgICAgICAg
ICAgICAgIHBpbmN0cmwtMCA9IDwmZ21hYzBfcnN0PjsKICAgICAgICAgICAgICAgICByZXNldC1h
c3NlcnQtdXMgPSA8MjAwMDA+OwogICAgICAgICAgICAgICAgIHJlc2V0LWRlYXNzZXJ0LXVzID0g
PDEwMDAwMD47CiAgICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8yIFJLX1BCMyBH
UElPX0FDVElWRV9MT1c+OwogICAgICAgICB9Owp9OwoKJnBpbmN0cmwgewogICAgICAgICBnbWFj
IHsKICAgICAgICAgICAgICAgICBnbWFjMF9yc3Q6IGdtYWMwLXJzdCB7CiAgICAgICAgICAgICAg
ICAgICAgICAgICByb2NrY2hpcCxwaW5zID0gPDIgUktfUEIzIFJLX0ZVTkNfR1BJTyAKJnBjZmdf
cHVsbF9ub25lPjsKICAgICAgICAgICAgICAgICB9OwogICAgICAgICB9Owp9OwoKClRoaXMgd29y
a3M6CgomZ21hYzAgewogICAgICAgICBjbG9ja19pbl9vdXQgPSAib3V0cHV0IjsKICAgICAgICAg
cGh5LWhhbmRsZSA9IDwmcmdtaWlfcGh5MD47CiAgICAgICAgIHBoeS1tb2RlID0gInJnbWlpLXJ4
aWQiOwogICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogICAgICAgICBwaW5jdHJs
LTAgPSA8JmV0aDBtMF9taWltCiAgICAgICAgICAgICAgICAgICAgICAmZXRoMG0wX3R4X2J1czIK
ICAgICAgICAgICAgICAgICAgICAgICZldGgwbTBfcnhfYnVzMgogICAgICAgICAgICAgICAgICAg
ICAgJmV0aDBtMF9yZ21paV9jbGsKICAgICAgICAgICAgICAgICAgICAgICZldGgwbTBfcmdtaWlf
YnVzCiAgICAgICAgICAgICAgICAgICAgICAmZXRobTBfY2xrMF8yNW1fb3V0PjsKICAgICAgICAg
dHhfZGVsYXkgPSA8MHgyMD47CiAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKfTsKCiZtZGlvMCB7
CiAgICAgICAgIHJnbWlpX3BoeTA6IGV0aGVybmV0LXBoeUAwIHsKICAgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKICAgICAgICAgICAgICAg
ICByZWcgPSA8MHgwPjsKICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBSRUZDTEtPMjVN
X0dNQUMwX09VVD47CiAgICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
ICAgICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JmdtYWMwX3JzdD47CiAgICAgICAgICAgICAg
ICAgcmVzZXQtYXNzZXJ0LXVzID0gPDIwMDAwPjsKICAgICAgICAgICAgICAgICByZXNldC1kZWFz
c2VydC11cyA9IDwxMDAwMDA+OwogICAgICAgICAgICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlv
MiBSS19QQjMgR1BJT19BQ1RJVkVfTE9XPjsKICAgICAgICAgfTsKfTsKCiZwaW5jdHJsIHsKICAg
ICAgICAgZ21hYyB7CiAgICAgICAgICAgICAgICAgZ21hYzBfcnN0OiBnbWFjMC1yc3QgewogICAg
ICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwyIFJLX1BCMyBSS19GVU5DX0dQ
SU8gCiZwY2ZnX3B1bGxfbm9uZT47CiAgICAgICAgICAgICAgICAgfTsKICAgICAgICAgfTsKfTsK
Cj4gCj4gcmszNTc2LXJvY2stNGQuZHRzIGFuZCByazM1NzYtYXJtc29tLXNpZ2U1LmR0cyBzaG93
IHRoYXQgaXQgaXMKPiBwb3NzaWJsZSB0byB1c2UgdGhpcyBTb0Mgd2l0aCB0aGUgY29ycmVjdCAn
cmdtaWktaWQnLAo+IAo+IAlBbmRyZXcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
