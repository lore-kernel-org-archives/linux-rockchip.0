Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E655C00A89
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 20:55:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 90760206CA
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 20:55:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1dYt06rg";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MGIOoPJB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 90760206CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kOwuYjMn33AT7gbxNa1geM12Jo8dhMyaC34JEiFqX5Q=; b=1dYt06rgmhpzmPHxZJjFrmWvF
	LTt6Z1icErjTr/Tu5M7lNd6qBOTHnOlAYyDq6JZPTi9NRZg7vqb9iH0DckKEn5OaO26lIU97UpQNJ
	5u7c5LOKgZwfVu3kSApzL3QlCwXd094k1tKrvXcbnsStZ91UPyzq5YVBfN/a5gO8OY6m8mEcMueH1
	iaC8JKRNS0C9MLTr++isBd4yWNyame+zdAEsywCeWAiQg7WWqEWR4RefGgo7dvPlJ895f4yjGpQTc
	K7QsR1hQiSHGFubg+mpANLAhooYf+kK+++RnMev3qDIqQ0wZJkxYv1Ygd+vBlOyLettoKjEdPX/or
	V1gh8i0dw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZgr1-00015J-Vl; Mon, 02 Nov 2020 20:55:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZgr0-00014i-Du
 for linux-rockchip@lists.infradead.org; Mon, 02 Nov 2020 20:55:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id 13so10737950wmf.0
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2020 12:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=98pff8tvkZvM55YjgnzPtL+jFygrmj7fAlghg5Uy9Uk=;
 b=MGIOoPJBfCy80639kd+6DV4s303v1qrHWe16Gp8JOmmmVj690AjR6oOnDGGSyypukq
 iMr4OCAthOB0nwfWtT5x1AXG71IB4pAJpKJxWUbznPDhozqcl3D6ENY9D7QS4xuTPPd/
 xakETx0iALK/jtNBan9MjhmLmUQ7iid2tqa+2cbtiwIfjn726YyFrtF5ozwOGLg3XVJz
 HjvEz6Gskx5h7qFxqFfcyLUe4LNe3Ty7xMyT7TpEHKxHV/jwlHACiS9Wwr8NZi9Z9X6X
 /iWUOOK2DvAhW2eTauesChnKe6KrvKRChsQYBGaH1ISIjk5udP8E6SsnN5Jz1VbKIZ+B
 4V8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=98pff8tvkZvM55YjgnzPtL+jFygrmj7fAlghg5Uy9Uk=;
 b=DWrA9dCqTkaZYWBlzpFjvfKCzRgg4lxJ/WpOTMLgfwEVUzUD5EuoXHiJfNQt3x9Lth
 1mkCBbnUn9FB07ms4Iqbpn/L1J+ofkUFeE3STor9RmSst9VeDXLcpSZ/W3mXBEej+9R7
 epOPrI5Duq6A6L9PwYUWmIMFNuZtYGL57ZnFuHwnVNBin7ZbAv6wMEtSSDyn76OsXy2j
 mq/jdZh0vsRDMDx2s4anDrQ1PXBS3Z2BIUakZqi2aL2m4baaXK6NwRyWxdu2y+AoHw+9
 LWJc50c3h6EOlNGiPSZ17yTqtXIse9tVFbv/9xi7OS4bJobRlkS9Uy7GCrgarRDJcgyV
 6iIA==
X-Gm-Message-State: AOAM532mBa+L1P/aooTwKDGFlwE41YkULXgPsSP6e6Mp/dv2QkKtXj5V
 tRKU6owPyVcz7pDbFiifihiv4xEbcJv+fg==
X-Google-Smtp-Source: ABdhPJz3g1OzGd2EfJhfddoc/hux3hj6YSsncTTSimZirRZn2oLTq3FJmikDYZmz56WZoNawdsGUtQ==
X-Received: by 2002:a1c:32c2:: with SMTP id
 y185mr12823944wmy.137.1604350499793; 
 Mon, 02 Nov 2020 12:54:59 -0800 (PST)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id q6sm727333wma.0.2020.11.02.12.54.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 12:54:58 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [regression, bisected] rk3399-gru-kevin does not boot with
 =?iso-8859-1?Q?5.10-rc1?=
Date: Mon, 02 Nov 2020 21:54:57 +0100
MIME-Version: 1.0
Message-ID: <80c033ad-6813-4e60-a62a-d791e9a3a2cf@gmail.com>
In-Reply-To: <CAFqH_505Cy=dtxBs6f5e-4K6Cy18p1Jp5iQ7o3Z80rBRSZ=Otg@mail.gmail.com>
References: <83376abe-f2c4-4b64-ba24-4c15cdc49d3f@gmail.com>
 <CAFqH_505Cy=dtxBs6f5e-4K6Cy18p1Jp5iQ7o3Z80rBRSZ=Otg@mail.gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_155502_546350_994CCA80 
X-CRM114-Status: GOOD (  14.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Gwendal Grignou <gwendal@chromium.org>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, Anton Vorontsov <anton@enomsg.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Colin Cross <ccross@android.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRW5yaWMsCgpPbiBTdW5kYXksIE5vdmVtYmVyIDEsIDIwMjAgODoyODozOSBQTSBDRVQsIEVu
cmljIEJhbGxldGJvIFNlcnJhIHdyb3RlOgo+IEhpIFZpY2VudGUsCj4KPiBNaXNzYXRnZSBkZSBW
aWNlbnRlIEJlcmdhcyA8dmljZW5jYkBnbWFpbC5jb20+IGRlbCBkaWEgZHYuLCAzMCBk4oCZb2N0
Lgo+IDIwMjAgYSBsZXMgMjM6MDQ6Cj4+IAo+PiBIaSwKPj4gY29tbWl0IGRkOTJmN2RmZTFiYTNi
YWQ1NTZjOGE1MjllZGFjY2U3YzZmZDAxOTUKPj4gcGxhdGZvcm0vY2hyb21lOiBLY29uZmlnOiBS
ZW1vdmUgdGhlIHRyYW5zaXRpb25hbCBNRkRfQ1JPU19FQyBjb25maWcKPj4gYnJva2UgYm9vdGlu
ZyByazMzOTktZ3J1LWtldmluLgo+PiAKPgo+IEkgZGlkbid0IHRlc3QgeWV0IGJ1dCBJIGRpZG4n
dCBzZWUgYW55IHJlZ3Jlc3Npb24gb24gS2VybmVsQ0kgc28gSQo+IHN1c3BlY3QgdGhhdCB5b3Un
cmUgdXNpbmcgYSBjdXN0b20vZGlzdHJvIG91dC1vZi10cmVlIGRlZmNvbmZpZyB0aGF0Cj4geW91
IG5lZWQgdG8gdXBkYXRlIGFmdGVyIHRoYXQgY2hhbmdlLiBNRkRfQ1JPU19FQyB3YXMgZGVwcmVj
YXRlZCBzb21lCj4gdmVyc2lvbnMgYWdvIGluIGZhdm9yIG9mIENST1NfRUMuIE1ha2Ugc3VyZSB5
b3UgaGF2ZSB0aGUgZm9sbG93aW5nCj4gY29uZmlncyBlbmFibGVkIGluIHlvdXIgZGVmY29uZmln
Lgo+Cj4gQ09ORklHX0NIUk9NRV9QTEFURk9STVMKPiBDT05GSUdfQ1JPU19FQwo+IENPTkZJR19N
RkRfQ1JPU19FQ19ERVYKCllvdSBhcmUgcmlnaHQsIGkgYW0gdXNpbmcgYSBjdXN0b20gY29uZmln
IHRoYXQgbmVlZGVkIGFuIHVwZGF0ZS4KSSBhbSBzb3JyeSwgaWYgaSBoYWQgcmVhZCBtb3JlIGNh
cmVmdWxseSB0aGUgcGF0Y2gsIGkgY291bGQgaGF2ZSBmb3VuZCB0aGUKcmVzb2x1dGlvbiBieSBt
eXNlbGYuCgpSZWdhcmRzLAogIFZpY2VudGUuCgo+PiBUaGUgZGlzcGxheSBkb2VzIG5vdCB0dXJu
IG9uIGFuZCB0aGVyZSBhcmUgbm8gZWFzeSBtZWFucyB0byBhY2Nlc3MgdGhlCj4+IHNlcmlhbCBw
b3J0LCBzbywgbm8gbW9yZSBpbmZvcm1hdGlvbiBpcyBhdmFpbGFibGUuCj4+IAo+PiBSZWdhcmRz
LAo+PiAgIFZpY2VudGUuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
