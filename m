Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C0EAC2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 09:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C9dneBjWyoncO2tz0zTvv1iR5u5DDzqdpCA3PPCN9cw=; b=tn9E43ZxekPtGjHz+fOuECn19A
	TRjP5SRKOfYPkaSfJ6pjgmwq+v16OGQeEqoSj0HXdkXJ7ZTwPSf6Z1EgTWYTvpQpdeslm2wXGggSr
	Bws86vdO6Yv9fwl4o1oSVcOuGFAleJvfH5OycvE3mrXeOln16XykPfis+bvrWP7MrINU3XeyCGn8t
	14bhBb6xVT7Nzcn/kdOR1pq1AblTZS+u2u3aiSYES/4sOw5/bkb4GKlqHRw0+ga8+sfMPK4w2Z+JS
	no7wMsH+704JX1aYxnW+I6VB5qUJ3GI7LZCz+MTUtZAAf/Kx6xfqSIwBpwvARs7laWsgu/wXTinYE
	bHlA6B8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCf42-00B6nQ-JD; Wed, 26 Jan 2022 09:58:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCf40-00B6mE-5i
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 09:58:05 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 l12-20020a7bc34c000000b003467c58cbdfso3392519wmj.2
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 01:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ARleMNp44KlMl6F3BCFO3u+GyyJQUa6qimUwmZ0NEoE=;
 b=RHuHyuSWNStBP0UIRFM9k2rxdN90Jmxxif+b+FZNwtvojfAR58aFrXsOvmBmkuZtY5
 /0NS9Hcus1UFbb5MM2icQrPIirbRpArX2FozDCOkOYpzd1EX2kPynaRhoiUJCrevmRYz
 yCUJa8NceZzBwt0q3gZWGzHrzCsg1oUJgoiQA3MrNS83GE018qhDX4TgX6moRDMU5Pja
 /TmPKPv+J22/VCcKgTUUMH14nbA3gPWAaVUfrpBUcMsdGW5E7mhO26FimCCHAS/AJKIK
 soJDSG+Ya+seyAn6OzMPcfRNe7eZ56QuDqxb/3DXMJW0Vb/EQKvSyHFR07F4VNFISl4v
 AbJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ARleMNp44KlMl6F3BCFO3u+GyyJQUa6qimUwmZ0NEoE=;
 b=OrkOMZmVXoy5itjx/tOq8obqSAWGcWhGLW+5qLCKkn7XlNibA5FBGn1vdPQq5HNmcm
 cp7lg/U6cbzavQV0qc/3rfR8Vujdk73zSBc+jhg8fhNk8Hj2ATO4KLh/KazmA8iCP8Jh
 LdqZVQWY26NZQ9UTKzd2k76IFmGCh9BoguXfEkqmj9VCraWn98nrvd7VG0bjF/aNNkyp
 Q0SrukPrDGLkpAAKMBpLI78W+gekeLisiPNs6s9MzOVswjYJrda+QgaRb+uEsITDZhF5
 EDb98XUTVcOZi5WpsQCja0ojOEOBfMGCDMdNMEyfR5dveaclwzps8N61chr+dSBk5+1I
 opog==
X-Gm-Message-State: AOAM533/zROoZQ8khlQy5XUI9L/CBlH7o84tnhil0ZMLsL8AE/GSieuZ
 pfjeW3b7I81BfA1oHRKMiSEfobQqesq2LA==
X-Google-Smtp-Source: ABdhPJxKsNc1gAQKS8O1k2JMAgG+xaSFr57soS4gyfXzq9Yn9kT1C+cKSY2BdeKQzRQc8MwfP227Fw==
X-Received: by 2002:a05:600c:a47:: with SMTP id
 c7mr6709918wmq.23.1643191082783; 
 Wed, 26 Jan 2022 01:58:02 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:f589:cf7d:b2ee:bb5e?
 ([2a01:e34:ed2f:f020:f589:cf7d:b2ee:bb5e])
 by smtp.googlemail.com with ESMTPSA id p2sm2706409wmc.33.2022.01.26.01.58.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Jan 2022 01:58:02 -0800 (PST)
Subject: Re: [PATCH v7 5/5] rockchip/soc/drivers: Add DTPM description for
 rk3399
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh@kernel.org>,
 lukasz.luba@arm.com, Heiko Stuebner <heiko@sntech.de>, arnd@linaro.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20220125171809.1273269-1-daniel.lezcano@linaro.org>
 <20220125171809.1273269-6-daniel.lezcano@linaro.org>
 <CAMuHMdXZEYNjFh2T4beWdfn8av_qXaPbg4yFk=9whESnLBaFAQ@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <31c6898b-e6f0-5118-119a-13e01e9fa507@linaro.org>
Date: Wed, 26 Jan 2022 10:58:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXZEYNjFh2T4beWdfn8av_qXaPbg4yFk=9whESnLBaFAQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_015804_239398_CD8FC0BE 
X-CRM114-Status: GOOD (  22.17  )
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

T24gMjYvMDEvMjAyMiAxMDo0MCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IEhpIERhbmll
bCwKPiAKPiBPbiBUdWUsIEphbiAyNSwgMjAyMiBhdCA2OjE4IFBNIERhbmllbCBMZXpjYW5vCj4g
PGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+IHdyb3RlOgo+PiBUaGUgRFRQTSBmcmFtZXdvcmsg
ZG9lcyBzdXBwb3J0IG5vdyB0aGUgaGllcmFyY2h5IGRlc2NyaXB0aW9uLgo+Pgo+PiBUaGUgcGxh
dGZvcm0gc3BlY2lmaWMgY29kZSBjYW4gY2FsbCB0aGUgaGllcmFyY2h5IGNyZWF0aW9uIGZ1bmN0
aW9uCj4+IHdpdGggYW4gYXJyYXkgb2Ygc3RydWN0IGR0cG1fbm9kZSBwb2ludGluZyB0byB0aGVp
ciBwYXJlbnQuCj4+Cj4+IFRoaXMgcGF0Y2ggcHJvdmlkZXMgYSBkZXNjcmlwdGlvbiBvZiB0aGUg
YmlnIC8gTGl0dGxlIENQVXMgYW5kIHRoZQo+PiBHUFUgYW5kIHRpZSB0aGVtIHRvZ2V0aGVyIHVu
ZGVyIGEgdmlydHVhbCAncGFja2FnZScgbmFtZS4gT25seSByazMzOTkgaXMKPj4gZGVzY3JpYmVk
IG5vdy4KPj4KPj4gVGhlIGRlc2NyaXB0aW9uIGNvdWxkIGJlIGV4dGVuZGVkIGluIHRoZSBmdXR1
cmUgd2l0aCB0aGUgbWVtb3J5Cj4+IGNvbnRyb2xsZXIgd2l0aCBkZXZmcmVxLgo+Pgo+PiBUaGUg
ZGVzY3JpcHRpb24gaXMgYWx3YXlzIGEgbW9kdWxlIGFuZCBpdCBkZXNjcmliZXMgdGhlIHNvZnQK
Pj4gZGVwZW5kZW5jaWVzLiBUaGUgdXNlcnNwYWNlIGhhcyB0byBsb2FkIHRoZSBzb2Z0ZGVwcyBt
b2R1bGUgaW4gdGhlCj4+IHJpZ2h0IG9yZGVyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
TGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPiAKPiBUaGFua3MgZm9yIHlvdXIg
cGF0Y2ghCj4gCj4+IC0tLQo+IAo+IENhbiB5b3UgcGxlYXNlIGluc2VydCBhIGNoYW5nZWxvZyBo
ZXJlLCBlc3BlY2lhbGx5IGlmIHlvdSBkb24ndCBDQyBhbGwKPiBwYXJ0aWVzIG9uIHRoZSBjb3Zl
ciBsZXR0ZXI/CgpBaCB5ZXMsIHdpbGwgZG8gaW4gdGhlIGZ1dHVyZQoKPiBZZXMsIEkgY2FuIGdl
dCBpdCBmcm9tIGxvcmUsIGJ1dCBpdCdzIGVhc2llciBmb3IgdGhlIGF1ZGllbmNlIGlmIGl0J3Mg
aW5jbHVkZWQKPiBoZXJlLgoKQ2hhbmdlbG9nOgogICBWNzoKICAgLSBObyBjaGFuZ2VzCgogICBW
NjoKICAgLSBNYWRlIHJrMzM5OSBhbHdheXMgYXMgYSBtb2R1bGUgYW5kIGFkZGVkIG1vZHVsZSBz
b2Z0ZGVwcwoKICAgVjU6CiAgIC0gTW9kdWxlIGNyZWF0aW9uCgoKCgoKLS0gCjxodHRwOi8vd3d3
LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJN
IFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGlu
YXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVy
IHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
