Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACAFC4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:52:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1EADF61075
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:52:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1EADF61075
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YloZr5W7rAKwOMa9voQzXGwh4/PpdoMjRKmRAtvdxqM=; b=nodFcFyPVoiS9FMDnOg55LKiPv
	pJKFxAd4Tt3ajvVOEHeGDAxTjYFUF7cWWxpE6hUTYRd4ym9P59z04HdvY1U630DF2Z6aMQ7KGI+jS
	DtYAFsCC8IPVFPysYQ9l3tjbH15pdnodWDmP6zKRO3hFQE7aat0SRtGfACWDW4u6SHQQaI4lVMruO
	bBLtMeWUZeQJLsZDbjrGec5O93FE+lZJUJsrNsIKFjLFxnoU/3HymPQ9alxBk8dZ8ow3OBLizSy9e
	QwoM750Iy0NSeThY3ZFGGedOoBGYCS1UX4T9cM8uDeBVu4rj5Gn87jk4y4eD7Ay89BKxmcD0YCPRM
	2O0kosHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw3Ig-00ArfM-Jy; Wed, 23 Jun 2021 13:52:18 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw3IV-00ArdH-Tt; Wed, 23 Jun 2021 13:52:09 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 m41-20020a05600c3b29b02901dcd3733f24so4060450wms.1; 
 Wed, 23 Jun 2021 06:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=RswLHNaF00PO7Arh2mf+qDFVtXypth6PIohJQobPJdA=;
 b=UqW954dW/ofN6YhRqH73bEer3gWpwd76LByR3QvhJ4XH5VBMQEsJyUzgvc17Z1PP08
 9Ta/WfWcthg1CDJ+BgUDwTbhLtR1I1WKN4UpMlrAeld4PF6u/AdTKtiviudC73hwg8Lz
 xYmjVrq9lSY/hFRYosKRoMFA+/2XAo8cvhjVYEoIEcRL6Ilt46oQrXkH9truJbKjMj4M
 3hbQ8xoMfcwX+HTZm+NZ9tHzrEoltJ8w0cOU/MvfVYzBUGqX5jDOOlbKk1CaOS/ziVQR
 NEA+Yyz0Piv4jNBNtfA6Ckj5Z4cP/iwbRnKlevBw/le+v9zujhnXnyt8/N2R792v9hEz
 AVlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=RswLHNaF00PO7Arh2mf+qDFVtXypth6PIohJQobPJdA=;
 b=MCZu4/uKMA7sElHbpxr6R7Un6Xarf708hiYo3zURSljanXHvKiKew24DKIZbjmgwXm
 5p8X0zWfBv8BmlxyzT8uKI664O2y91GP4RYcQcSgX+7jPW6yWSeajA6E6AkF3YBZIBfe
 w/ycjeUXuI0EuCvVcP1HcqCvMZ8OfYFrk6uogbx1NHtc7RgdRultUA5JIMGSZmmku2FI
 abtrdLooMUntECAajBAD/OlUCMSZ59iyCM3OwLcj7aRk0FDitcdtkR/f8B1yKk064/3T
 +zxVu6YSKbjglyCWhQa04ChBIckgQdZEiLDo8b+SFdPtcJQWzgV6hL5voeBmhj/4FIHL
 4oCQ==
X-Gm-Message-State: AOAM530+6rgypMtqM2+YIbnrYjf2m4+w3/uG/ZYr4yZnNHjsBFZFsinr
 RDICxArjcyGksKaOy36k7g==
X-Google-Smtp-Source: ABdhPJyZYaSej/0iKW6pQbiDQdw7KsYcMOhnQ6fIa7wK6mYNSV2Kr4abOqf64sshVHHxZwVMqV3Zow==
X-Received: by 2002:a7b:c7c7:: with SMTP id z7mr11124693wmk.21.1624456326541; 
 Wed, 23 Jun 2021 06:52:06 -0700 (PDT)
Received: from [192.168.200.247] (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.gmail.com with ESMTPSA id r10sm122412wrq.17.2021.06.23.06.52.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jun 2021 06:52:06 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdmmc_ext for RK3328
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, wens@kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20210623120001.164920-1-knaerzche@gmail.com>
 <CAGb2v67K-BRhQ_a1yXtdPCX8T30FJPLojueJ2cvpXmGUskOLjA@mail.gmail.com>
 <6327455.haC6HkEk0m@diego>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <f1cf1be4-b386-2ab0-9813-dd47dc4e7a8f@gmail.com>
Date: Wed, 23 Jun 2021 15:52:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <6327455.haC6HkEk0m@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_065208_014054_58953898 
X-CRM114-Status: GOOD (  14.60  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGnCoCBDaGVuLVl1LCBIZWlrbywKCkFtIDIzLjA2LjIxIHVtIDE1OjQwIHNjaHJpZWIgSGVpa28g
U3TDvGJuZXI6Cj4gQW0gTWl0dHdvY2gsIDIzLiBKdW5pIDIwMjEsIDE1OjExOjEyIENFU1Qgc2No
cmllYiBDaGVuLVl1IFRzYWk6Cj4+IE9uIFdlZCwgSnVuIDIzLCAyMDIxIGF0IDg6MDAgUE0gQWxl
eCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+IHdyb3RlOgo+Pj4gUkszMzI4IFNvQyBoYXMgYSBm
b3VydGggbW1jIGNvbnRyb2xsZXIgY2FsbGVkIFNETU1DX0VYVC4gU29tZQo+Pj4gYm9hcmRzIGhh
dmUgc2RpbyB3aWZpIGNvbm5lY3RlZCB0byBpdC4gSW4gb3JkZXIgdG8gdXNlIGl0Cj4+PiBvbmUg
d291bGQgaGF2ZSB0byBhZGQgdGhlIHBpbmN0cmxzIGZyb20gc2RtbWMwZXh0IGdyb3VwIHdoaWNo
Cj4+PiBpcyBkb25lIG9uIGJvYXJkIGxldmVsLgo+Pj4KPj4+IFdoaWxlIGF0IHRoYXQgYWxzbyBh
ZGQgdGhlIHJlc2V0IGNvbnRyb2xzIGZvciB0aGUgb3RoZXIgbW1jCj4+PiBjb250cm9sbGVycy4K
Pj4gSSByZWNvbW1lbmQgc3BsaXR0aW5nIHRoaXMgcGFydCBpbnRvIGEgc2VwYXJhdGUgcGF0Y2gs
IGFuZAo+PiBhZGRpbmcgYW4gYXBwcm9wcmlhdGUgIkZpeGVzIiB0YWcgdG8gaXQuCj4gSSdtIHdp
dGggeW91IG9uIHRoYXQuIEFkZGluZyB0aGUgcmVzZXRzIHRvIHRoZSBleGlzdGluZyBjb250cm9s
bGVycwo+IHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoLgoKV2lsbCBkby4KCkFsZXgKCj4gSGVp
a28KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
