Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB2CFC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:42:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8EE6D6527D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 23:42:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8EE6D6527D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nOV4H9PwvsLk3/sx9AjA9hxKalqcP1j0+Kol/LoMf5o=; b=pItf23bJnqHJlH/KT0Mgo7LQA
	wVW94alpq4jumlVpxQl4Pri3GOGlRFcuMqC6uMfqr44Wkcl5Gj27gw6UkkAjIdrP8Th73PVWocuV4
	Q/FUaCU939zU0foqgzJ0CMRExg/2vubFoAQDTqvSRLxsSNkWXebHrNF2jMBlBY+plVIWMjiqftvRu
	uuhGnXMKlrFdUfT+d0GC9z4uwKkE4MG35iAquJqSDCQCcYUhdoCcxFfoQsQpG2b0u77EPPJdwgXv6
	7RPdzmyB225IG57e2BCg25tlfkOiAGUn4MyJWKJeKflYeby4rrsfOd7r/Q7LFpg8L/ZJpTkshJHEM
	oG15LConA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJPW0-003P6z-KT; Mon, 08 Mar 2021 23:42:20 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJPVt-003P5V-I1
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 23:42:17 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 124-20020a1c00820000b029010b871409cfso4811764wma.4
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 15:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hwc6ioSeyDLj2VeBA1I8VhaON0iiYWH5K/33t+nVEd4=;
 b=fG2Rf1CFFFJOBspVUlpQ58aCn5uGaTWTG5S2k7Kybh/91K2GAbdqKd08CvgyEghb/v
 Wcyt4s3jj1DrxGQNenrDByBqIO2oVEcoemDa+Z8QSM0Tae7LoJCm73rMhwLvzOt7soLa
 O1bd+/urR20jWf6kPZXJSWTCNFsP98AoQJbxzbaiYnVNySdgYmVucLU6umzI2ksECekN
 6KQdPPMQqFmlmyurT0EpFOZeR4cJCwf8Z5Q6X7yw2qEHPaNKKzTJM4Gws9qW/1J9i+a9
 sqlQMuSttREb5QD9bFj9Vt/URjmssrlxCyMVJ6R7alQYqUDoGchRWXyph6/7AnC5Ay0L
 amHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hwc6ioSeyDLj2VeBA1I8VhaON0iiYWH5K/33t+nVEd4=;
 b=lh3av4Yydj+TeY30GLEmW/1wkbClbu5S0Ho4w1t6byrxXIRbhMPWPdpggpZT0Q6PGD
 bjQT1eRYI0obwN9efxrHLN5/qQFzRgy+ntpG+lpT2+gemMfjtnb0Xryod2XENVBSJ7B2
 91ej5q/yvqGzaRKpUkI1mo2wIvMzPXe5SBvKt7YilTgs8+IZvE9vc0P/samGnD/oWdeW
 zGNcfAzU5Y/ttRYMPSqxWAHOrETqf6wCeTE+xhlXiVKrHWHcIoq766DpX90d8Ahk98X1
 21dpZdkFgp+YgH+OgF8VyqlVxV4wua44/0/lYHgXXb0q3j+UBuhfv4C77TPLI3lQlqaS
 1ngQ==
X-Gm-Message-State: AOAM531Ahj52Z0DQsgj8kBa72HcQoMqKrFwjMlyv9Ar7tACB0a5j7z3y
 x+SE7PAPmw6gZRWrSZDodn4cyw==
X-Google-Smtp-Source: ABdhPJwxqDuF6ZBG+tpLP00v/+QBSkSxlsTwFBddThHUrkPRzL59fLYqHDncktr+qz2xfyOcvqL48A==
X-Received: by 2002:a05:600c:220d:: with SMTP id
 z13mr1053866wml.1.1615246932725; 
 Mon, 08 Mar 2021 15:42:12 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:8499:4f69:106b:da0?
 ([2a01:e34:ed2f:f020:8499:4f69:106b:da0])
 by smtp.googlemail.com with ESMTPSA id j16sm1684956wmi.2.2021.03.08.15.42.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Mar 2021 15:42:12 -0800 (PST)
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: devfreq: rk3399_dmc: Add
 rockchip,pmu phandle.
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@collabora.com>,
 Rob Herring <robh@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 "open list:DEVICE FREQUENCY (DEVFREQ)" <linux-pm@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20210308233858.24741-1-daniel.lezcano@linaro.org>
Message-ID: <0771841f-9227-1c6a-2dc2-366511bcc926@linaro.org>
Date: Tue, 9 Mar 2021 00:42:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210308233858.24741-1-daniel.lezcano@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_234213_738025_6A953922 
X-CRM114-Status: GOOD (  17.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMDkvMDMvMjAyMSAwMDozOCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gRnJvbTogRW5yaWMg
QmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiAKPiBUaGUg
Um9ja2NoaXAgRE1DIChEeW5hbWljIE1lbW9yeSBJbnRlcmZhY2UpIG5lZWRzIHRvIGFjY2VzcyB0
byB0aGUgUE1VCj4gZ2VuZXJhbCByZWdpc3RlciBmaWxlcyB0byBrbm93IHRoZSBEUkFNIHR5cGUs
IHNvIGFkZCBhIHBoYW5kbGUgdG8gdGhlCj4gc3lzY29uIHRoYXQgbWFuYWdlcyB0aGVzZSByZWdp
c3RlcnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMu
YmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAw
LmNob2lAc2Ftc3VuZy5jb20+Cj4gQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5v
cmc+Cj4gU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBvcnRheUBjb2xsYWJvcmEu
Y29tPgo+IEFja2VkLWJ5OiBNeXVuZ0pvbyBIYW0gPG15dW5nam9vLmhhbUBzYW1zdW5nLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9y
Zz4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvcmsz
Mzk5X2RtYy50eHQgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEv
cmszMzk5X2RtYy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJl
cS9yazMzOTlfZG1jLnR4dAo+IGluZGV4IGExMGQxZjZkODVjNi4uYTQxYmNmZWY5NWM4IDEwMDY0
NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVxL3JrMzM5
OV9kbWMudHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZy
ZXEvcmszMzk5X2RtYy50eHQKPiBAQCAtMTIsNiArMTIsOCBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVz
Ogo+ICAJCQkgZm9yIGRldGFpbHMuCj4gIC0gY2VudGVyLXN1cHBseToJIERNQyBzdXBwbHkgbm9k
ZS4KPiAgLSBzdGF0dXM6CQkgTWFya3MgdGhlIG5vZGUgZW5hYmxlZC9kaXNhYmxlZC4KPiArLSBy
b2NrY2hpcCxwbXU6CQkgUGhhbmRsZSB0byB0aGUgc3lzY29uIG1hbmFnaW5nIHRoZSAiUE1VIGdl
bmVyYWwgcmVnaXN0ZXIKPiArCQkJIGZpbGVzIi4KCkZvciB0aGUgcmVjb3JkLCBodHRwczovL2xr
bWwub3JnL2xrbWwvMjAyMC82LzMwLzM2NwoKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+
IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93
IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29r
IHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3
dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
