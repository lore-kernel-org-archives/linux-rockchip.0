Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CAC4C46CCD
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 13:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfa1B6jitr1Y/QHt+SoWW4ybpStS80CcT3DS2PvS3/0=; b=f1IKw9uYTflgux
	dYJddpn0Zg89UMM5E9YdJNFBom7fB4EAHF1/RXjRmnOll9Yif00ZPEgJBF2qjanSYzZU/g8S0IGWe
	eOvkHATOMC4ACx4Te5VcqqlIpYZfrBOzGXOVBoJPv4MsAw2is43+h2z/C8Xj4lRpjwMqdSFJw2kPv
	KP03fOm4+ZHQgpq8HGY6pbdxfuHOw0N9FYM9Ou4vMOlW6UBhMW8WCOy4yLPqGrimCVCNbOlBpLIZN
	GIRo9BzxcYrMxY5weRaDaz+ymNx/SxN08rPrqDWq7A2vNP9GWHiJqqXi++3zkfS1u0x/iRYNGu6gE
	AZYw+mrC/Lpf+zNAtnvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJOC-0033YX-2y;
	Thu, 21 Dec 2023 13:47:04 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJO8-0033UT-1t;
	Thu, 21 Dec 2023 13:47:02 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-54cb4fa667bso1034186a12.3;
        Thu, 21 Dec 2023 05:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703166418; x=1703771218; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d1tAZ8GdByb8q0+1M5iM8QIUCHX6alVx7yOZ8zoIeaQ=;
        b=eT/5whpz8gMarxfxuX6EOaGS2vCrTsSRSGN730JZo/YyAd2+EQAJxhaomd0vMG+M5k
         ytH2lrIsj8niZ1eeGeAUgZFg6zzjb+e425wnFbbp/0vqTUBMEUrmxxGkw/P+hnascSEM
         zB5ryD9zBwE/W9xC3pyDTfPfg+8YsLixEbrMAFE6xPOP420IW1mkLSR0xrPAIaaQNy5Q
         leLJksbhh4XmylUhLCX7PkpM2bSV4aaezZ28VwTAmvc5qgatLi+t5oiZYtjfOI7lc9NJ
         BxaF+byHyDMdwN6oHjnhISHju0h/aF3mMQSECZndJyF5oAt0JqI5zbOUh471EB72+cGC
         4vHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703166418; x=1703771218;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d1tAZ8GdByb8q0+1M5iM8QIUCHX6alVx7yOZ8zoIeaQ=;
        b=BrPKxnRWI5zq32N0TzW9HOrbl61UgMdK8urNV85qKADgG8XySAn3jWtlzH7SBoSV+v
         st8/5olZQotC1GeFfb/xl9mMLJQrHN92GaRwxlWAhDl+TpfGdrn2T5S+oWE7APu/sYw1
         zH2o4Kkx9S9kpfu4kD2GQuE/OiltIU87lkHRS/nt+BtTqs/b8OEJM+4C1fzPD3AFv2SF
         Ho2kzJ7Lo72WzXUMEct01ZD+DyaI/eZBj5kqrMUsLjMYCIGfd3UW3NFmwIcRDUBDn15X
         Y2DsAcs+Bfq9AqbHsD8lD5wdPto48l4gcgsJgshx5eKENyOTQi7qt8FNO9DH5PSyqGxf
         X54Q==
X-Gm-Message-State: AOJu0Yxtva40NNkg8K9c9HIYdiGLW/4bnycNZJ0qTH6ztuXz3lTh8ub4
	MNN5aSi5sXTL24rv1HGstw==
X-Google-Smtp-Source: AGHT+IHXd7MayCVwis6kd4X/xob72svSWV/OODq5cZ/Go8Rd7wNoGd/LEEF1HL3PA7jhTNXGBqQP7A==
X-Received: by 2002:a50:8e17:0:b0:553:68b2:31e3 with SMTP id 23-20020a508e17000000b0055368b231e3mr3672745edw.30.1703166417679;
        Thu, 21 Dec 2023 05:46:57 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0? ([2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0])
        by smtp.gmail.com with ESMTPSA id i21-20020a0564020f1500b0055344b92fb6sm1185290eda.75.2023.12.21.05.46.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 05:46:57 -0800 (PST)
Message-ID: <b03a7ddc-65c5-44c3-a563-d52ee938148a@gmail.com>
Date: Thu, 21 Dec 2023 14:46:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
Content-Language: en-US, de-DE
To: Adam Ford <aford173@gmail.com>
Cc: Hugues FRUCHET <hugues.fruchet@foss.st.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-media@vger.kernel.org, Alexandre Torgue
 <alexandre.torgue@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
 <769a1510-f8d2-4095-9879-42f413141dee@gmail.com>
 <a240d2ac-db0e-481b-8d13-3ae76cfd2fe7@foss.st.com>
 <e5ba1e14-4bbf-43e3-933a-fee6d4b90641@gmail.com>
 <CAHCN7xJ3Ktn+TnoOYdnNvKTddGCfLp4OQ+gM0WonWj-aqnsGuA@mail.gmail.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <CAHCN7xJ3Ktn+TnoOYdnNvKTddGCfLp4OQ+gM0WonWj-aqnsGuA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_054700_626079_09EB30B6 
X-CRM114-Status: GOOD (  23.49  )
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

CkFtIDIxLjEyLjIzIHVtIDE0OjM4IHNjaHJpZWIgQWRhbSBGb3JkOgo+IE9uIFRodSwgRGVjIDIx
LCAyMDIzIGF0IDc6MzHigK9BTSBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4gd3JvdGU6
Cj4+IEhpIEh1Z3VlcywKPj4KPj4gQW0gMjEuMTIuMjMgdW0gMTQ6MDggc2NocmllYiBIdWd1ZXMg
RlJVQ0hFVDoKPj4+IEhpIEFsZXgsCj4+Pgo+Pj4gVGhpcyBpcyBiZWNhdXNlIFZERUMgYW5kIFZF
TkMgYXJlIHR3byBzZXBhcmF0ZWQgSVBzIHdpdGggdGhlaXIgb3duCj4+PiBoYXJkd2FyZSByZXNv
dXJjZXMgYW5kIG5vIGxpbmtzIGJldHdlZW4gYm90aC4KPj4+IE9uIGZ1dHVyZSBTb0NzLCBWREVD
IGNhbiBzaGlwIG9uIGl0cyBvd24sIHNhbWUgZm9yIFZFTkMuCj4+Pgo+PiBJIHRoaW5rIHRoYXQn
cyB3aGF0IHRoZSBkcml2ZXIgaXMvd2FzIGRlc2lnbmVkIGZvciA6KQo+Pgo+PiBJIGRvbid0ICB0
aGluayB0aGVyZSBfaGFzXyB0byBiZSBhIGxpbmsgYmV0d2VlbiB2YXJpYW50cyBpbiB0aGUgc2Ft
ZSBmaWxlLgo+PiBGb3IgUm9ja2NoaXAgd2Ugb25seSBoYWQgdGhlIGlzc3VlIHRoYXQgdGhlcmUg
X2lzXyBhIGxpbmsgKHNoYXJlZAo+PiByZXNvdXJjZXMpIGJldHdlZW4gZW5jb2RlciBhbmQgZGVj
b2RlciBhbmQgdGhleSBoYWQgKGZvciB0aGF0IHJlYXNvbikgdG8gYmUKPj4gZGVmaW5lZCBoYXMg
YSBfc2luZ2xlXyB2YXJpYW50LiBBbmQgdGhlcmUgaXMgbm8gcmVhc29uIHlvdSBjYW4gc2hpcCBk
ZWNvZGVyCj4+IGFuZCBlbmNvZGVyIHNlcGVyYXRlZCB3aGVuIHlvdSBoYXZlIHR3byB2YXJpYW50
cyAod2l0aCBkaWZmZXJlbnQKPj4gY29tcGF0aWJsZXMpLgo+PiBGb3IgUm9ja2NoaXAgYW5kIGlN
WCB0aG9zZSBmaWxlcyBhcmUgZXZlbiBjb250YWluaW5nIHZhcmlhbnRzIGZvciBjb21wbGV0bHkK
Pj4gZGlmZmVyZW50IGdlbmVyYXRpb25zIC8gZGlmZmVyZW50IFNvQ3MuIEkgaGFkIHRvIGNsZWFu
dXAgdGhpcyBtZXNzIGZvcgo+IFRoZSBpLk1YOE0gTWluaSBhbmQgUGx1cyBoYXZlIGRpZmZlcmVu
dCBwb3dlciBkb21haW5zIGZvciBlbmNvZGVyIGFuZAo+IGRlY29kZXJzIGFzIHdlbGwgYXMgZGlm
ZmVyZW50IGNsb2Nrcy4gIEtlZXBpbmcgdGhlbSBzZXBhcmF0ZSB3b3VsZAo+IGFsbW9zdCBiZSBu
ZWNlc3NhcnkuCkkgZ3Vlc3MgdGhlcmUgaXMgbWlzc3VuZGVyc3RhbmRpbmc6IEkgZGlkbid0IHNh
eSB0aGUgdHdvIFNUTSB2YXJpYW50cwpzaG91bGQgYmUgbWVyZ2VkIGluIG9uZSB2YXJpYW50LCBi
dXQgdGhlIHR3byB2YXJpYW50cyBzaG91bGQgYmUgd2l0aGluIHRoZQpzYW1lIF9maWxlXywgbGlr
ZSB0aGUgb3RoZXIgcGxhdGZvcm1zIGFyZSBkb2luZyA6KQo+IGFkYW0KPgo+PiBSb2NrY2hpcCBv
bmNlIC0gYW5kIGl0IHdhcyBubyBmdW4gOikgQW55d2F5czogSXQncyB1cCB0byB0aGUgbWFpbnRh
aW5lcnMgSQo+PiBndWVzcyAtIEkganVzdCB3YW50ZWQgdG8gYXNrIGlmIEkgbWlzc3VuZGVyc3Rh
bmQgc29tZXRoaW5nIGhlcmUuCj4+Cj4+IEdyZWV0aW5ncywKPj4KPj4gQWxleAo+Pgo+Pj4gSG9w
aW5nIHRoYXQgdGhpcyBjbGFyaWZ5Lgo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IEh1Z3Vlcy4K
Pj4+Cj4+PiBPbiAxMi8yMS8yMyAxMzo0MCwgQWxleCBCZWUgd3JvdGU6Cj4+Pj4gSGkgSHVndWVz
LCBIaSBOaWNvbGFzLAo+Pj4+Cj4+Pj4gaXMgdGhlcmUgYW55IHNwZWNpZmljIHJlYXNvbiBJJ20g
bm90IHVuZGVyc3RhbmRpbmcgLyBzZWVpbmcgd2h5IHRoaXMKPj4+PiBpcyBhZGRlZCBpbiB0d28g
c2VwZXJhdGUgdmRlYyogLyB2ZW5jKiBmaWxlcyBhbmQgbm90IGEgc2luZ2xlIHZwdSoKPj4+PiBm
aWxlPyBJcyBpdCBvbmx5IGZvciB0aGUgc2VwZXJhdGUgY2xvY2tzICgtbmFtZXMpIC8gaXJxcyAo
LW5hbWVzKSAvCj4+Pj4gY2FsbGJhY2tzPyBUaG9zZSBhcmUgZGVmaW5lZCBwZXIgdmFyaWFudCBh
bmQgcGVyZmVjdGx5IGZpdCBpbiBhCj4+Pj4gc2luZ2xlIGZpbGUgaG9sZGluZyBvbmUgdmRlYyBh
bmQgb25lIHZlbmMgdmFyaWFudC4KPj4+Pgo+Pj4+IEFsZXgKPj4+Pgo+Pj4+IEFtIDIxLjEyLjIz
IHVtIDA5OjQ3IHNjaHJpZWIgSHVndWVzIEZydWNoZXQ6Cj4+Pj4+IFRoaXMgcGF0Y2hzZXQgaW50
cm9kdWNlcyBzdXBwb3J0IGZvciBWREVDIHZpZGVvIGhhcmR3YXJlIGRlY29kZXIKPj4+Pj4gYW5k
IFZFTkMgdmlkZW8gaGFyZHdhcmUgZW5jb2RlciBvZiBTVE1pY3JvZWxlY3Ryb25pY3MgU1RNMzJN
UDI1Cj4+Pj4+IFNvQyBzZXJpZXMuCj4+Pj4+Cj4+Pj4+IFRoaXMgaW5pdGlhbCBzdXBwb3J0IGlt
cGxlbWVudHMgSDI2NCBkZWNvZGluZywgVlA4IGRlY29kaW5nIGFuZAo+Pj4+PiBKUEVHIGVuY29k
aW5nLgo+Pj4+Pgo+Pj4+PiBUaGlzIGhhcyBiZWVuIHRlc3RlZCBvbiBTVE0zMk1QMjU3Ri1FVjEg
ZXZhbHVhdGlvbiBib2FyZC4KPj4+Pj4KPj4+Pj4gPT09PT09PT09PT0KPj4+Pj4gPSBoaXN0b3J5
ID0KPj4+Pj4gPT09PT09PT09PT0KPj4+Pj4gdmVyc2lvbiA1Ogo+Pj4+PiAgICAgIC0gUHJlY2lz
ZSB0aGF0IHZpZGVvIGRlY29kaW5nIGFzIGJlZW4gc3VjY2Vzc2Z1bGx5IHRlc3RlZCB1cCB0bwo+
Pj4+PiBmdWxsIEhECj4+Pj4+ICAgICAgLSBBZGQgTmljb2xhcyBEdWZyZXNuZSByZXZpZXdlZC1i
eQo+Pj4+Pgo+Pj4+PiB2ZXJzaW9uIDQ6Cj4+Pj4+ICAgICAgLSBGaXggY29tbWVudHMgZnJvbSBO
aWNvbGFzIGFib3V0IGRyb3BwaW5nIGVuY29kZXIgcmF3IHN0ZXBzCj4+Pj4+Cj4+Pj4+IHZlcnNp
b24gMzoKPj4+Pj4gICAgICAtIEZpeCByZW1hcmtzIGZyb20gS3J6eXN6dG9mIEtvemxvd3NraToK
Pj4+Pj4gICAgICAgLSBkcm9wICJpdGVtcyIsIHdlIGtlZXAgc2ltcGxlIGVudW0gaW4gc3VjaCBj
YXNlCj4+Pj4+ICAgICAgIC0gZHJvcCBzZWNvbmQgZXhhbXBsZSAtIGl0IGlzIHRoZSBzYW1lIGFz
IHRoZSBmaXJzdAo+Pj4+PiAgICAgIC0gRHJvcCB1bnVzZWQgbm9kZSBsYWJlbHMgYXMgc3VnZ2Vz
dGVkIGJ5IENvbm9yIERvb2xleQo+Pj4+PiAgICAgIC0gUmV2aXNpdCBtaW4vbWF4IHJlc29sdXRp
b25zIGFzIHN1Z2dlc3RlZCBieSBOaWNvbGFzIER1ZnJlc25lCj4+Pj4+Cj4+Pj4+IHZlcnNpb24g
MjoKPj4+Pj4gICAgICAtIEZpeCByZW1hcmtzIGZyb20gS3J6eXN6dG9mIEtvemxvd3NraSBvbiB2
MToKPj4+Pj4gICAgICAgLSBzaW5nbGUgdmlkZW8tY29kZWMgYmluZGluZyBmb3IgYm90aCBWREVD
L1ZFTkMKPj4+Pj4gICAgICAgLSBnZXQgcmlkIG9mICItbmFtZXMiCj4+Pj4+ICAgICAgIC0gdXNl
IG9mIGdlbmVyaWMgbm9kZSBuYW1lICJ2aWRlby1jb2RlYyIKPj4+Pj4KPj4+Pj4gdmVyc2lvbiAx
Ogo+Pj4+PiAgICAgLSBJbml0aWFsIHN1Ym1pc3Npb24KPj4+Pj4KPj4+Pj4gSHVndWVzIEZydWNo
ZXQgKDUpOgo+Pj4+PiAgICAgZHQtYmluZGluZ3M6IG1lZGlhOiBEb2N1bWVudCBTVE0zMk1QMjUg
VkRFQyAmIFZFTkMgdmlkZW8gY29kZWNzCj4+Pj4+ICAgICBtZWRpYTogaGFudHJvOiBhZGQgc3Vw
cG9ydCBmb3IgU1RNMzJNUDI1IFZERUMKPj4+Pj4gICAgIG1lZGlhOiBoYW50cm86IGFkZCBzdXBw
b3J0IGZvciBTVE0zMk1QMjUgVkVOQwo+Pj4+PiAgICAgYXJtNjQ6IGR0czogc3Q6IGFkZCB2aWRl
byBkZWNvZGVyIHN1cHBvcnQgdG8gc3RtMzJtcDI1NQo+Pj4+PiAgICAgYXJtNjQ6IGR0czogc3Q6
IGFkZCB2aWRlbyBlbmNvZGVyIHN1cHBvcnQgdG8gc3RtMzJtcDI1NQo+Pj4+Pgo+Pj4+PiAgICAu
Li4vbWVkaWEvc3Qsc3RtMzJtcDI1LXZpZGVvLWNvZGVjLnlhbWwgICAgICAgfCAgNTAgKysrKysr
KysKPj4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9zdC9zdG0zMm1wMjUxLmR0c2kgICAgICAg
IHwgIDEyICsrCj4+Pj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1NS5kdHNp
ICAgICAgICB8ICAxNyArKysKPj4+Pj4gICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9LY29uZmlnICAgIHwgIDE0ICsrLQo+Pj4+PiAgICBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL01ha2VmaWxlICAgfCAgIDQgKwo+Pj4+PiAgICAuLi4vbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jICAgfCAgIDQgKwo+Pj4+PiAgICAuLi4vbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmggICAgfCAgIDIgKwo+Pj4+PiAgICAuLi4v
cGxhdGZvcm0vdmVyaXNpbGljb24vc3RtMzJtcDI1X3ZkZWNfaHcuYyAgfCAgOTIgKysrKysrKysr
KysrKysKPj4+Pj4gICAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZW5jX2h3
LmMgIHwgMTE1Cj4+Pj4+ICsrKysrKysrKysrKysrKysrKwo+Pj4+PiAgICA5IGZpbGVzIGNoYW5n
ZWQsIDMwNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4+PiAgICBjcmVhdGUgbW9k
ZSAxMDA2NDQKPj4+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N0
LHN0bTMybXAyNS12aWRlby1jb2RlYy55YW1sCj4+Pj4+ICAgIGNyZWF0ZSBtb2RlIDEwMDY0NAo+
Pj4+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVjX2h3
LmMKPj4+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0Cj4+Pj4+IGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vc3RtMzJtcDI1X3ZlbmNfaHcuYwo+Pj4+PgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
