Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806AA606A329
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 18:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=voipkoy9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=p8fSkSN3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4C1HHeRRLFOfxcpzT3SvwkT406CHwJ1AgUVS4VMKpyQ=; b=voipkoy9GjLxQza1AhQe5QvDI9
	FwfDgFknBj/gkhaaSDq3hXp5ulI87Ev8ihqHC44L9Eg3HOZuQvhc7HhdskwGuwVhmBgO8xLRfblon
	qy7sYVjnJuhOEED3p3iihwAufdcGJrORmIY6o0Li4J3uajKw8CiqI2AR8BbBNyHV8zZWvYlosqYi6
	5PDnmyZ230boCy2cBhKYSkcNeIOkbvuG9y6UGQq00QwDLxBqkT1IyjiUnby7JiYyBbuAp4LKyFFhX
	hFq0JSm/oc/ECuR73wf5pjmsH8YiiMxiwblsF2gviHp5eXxDP/BGGfISEduT4lUFFHvjuAjXh65Bp
	R1VQF6Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT1Sb-00000003Yhz-0zPz;
	Mon, 16 Nov 2026 18:29:45 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT1SY-00000003Yh5-39Eu
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 18:29:43 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4bb64ef5a14so19488225e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Nov 2026 10:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794853780; x=1795458580; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ohJe8BJBCDffCZ4MuZ0uQ527x40SLHyvNrdc9OJlZqQ=;
        b=p8fSkSN3kM62CkECfY2MQQeuTAL5G+zRaSIxExkLjpK4NhOYwNdkBCLvOGufGweuaH
         xeHeTpeZRuy8U9q6ORGyKWjl6oLJ6K1fUgiSSeRLyu1Zn2W9OSZpwV1yPguPHOrmagBF
         wsBAMo5zJrV4k0hNt6IH4B3jxqjQQCcGIMv5FwpcGeivNl/+i1tudU95FjzUa+atdwFw
         mc08NGGymgB43qXbg96RgNDYbRHD8W7ecjNyVX1KqEKJcJ6PYf6c1cc9M+T+Qbc3t8VS
         hAfkU/Pj198+hePOetgdLcF28rFQZyJ1pkaD6FSoB7mnmJJAc9dfd/rQIaeQhq0Dl4UY
         Bvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794853780; x=1795458580;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ohJe8BJBCDffCZ4MuZ0uQ527x40SLHyvNrdc9OJlZqQ=;
        b=ThoxDfZqQA3fGfuNsOWByBJ6msZqmC52xu8/RUVU4xJmk/UYX9AswELE2EeyT2GSWd
         hOcN2din2J/wW9rS3q91fppONCYhQRqcR3aNaKXip+JVpP8p98FQT9S3eaWyNC01Gym4
         FSLmPom2kmY4F2CalKC8IYUK2E1cq0zC3lq01oAdatFlyepMJT1DNd/zRM5+LfP1h4U9
         6T+kJWnBKImZrsNkUBztUDbCj92mfGQkEHv5yTLWXuZPS7bJ/OQgPZcaTlrPNEIf/+cp
         sX2CpZVuCYBp/Kxae1UyuSePWd+6qN+xRCviUUtW4wIF58x9bBGnBwBK/Nbve9W+Uqow
         8YRg==
X-Forwarded-Encrypted: i=1; AL+hErEaY71KrFbCpxP8qsu2D1x50XxHoxG2j127AIr8sCoq3pvf1VWAAETtqrSDXtUyHTFRMR1gyzQ7cB/4VSc5SQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8FQKcNZATUwbRbtuCs2qJ9fYSE9P345oSrPs7GPnKNGHdGgNNV
	FUOq7BPZ50Il5N1YmNNpYUOuNkjRw+2NByFcCqldZbk40Oxk7K1rAQrm
X-Gm-Gg: AYBFou35cT546Eq5WKaz17Qc8JJN9qxWdijIZfSM1gbRjBqIAm43eNPkoAXzdSypqqq
	/XKAcrkkEAbsmwwlSRb+KWDDB3tvXLA3t1fdqLCOfNTSOe0ItfRKrmmZ/G0wAxAhVGphDrLUXAb
	eFsAqEnn75bbmIiecRvPqdDFv5rJHn3ipmQZGhO5qb/eaV5k6tSdUdyr7igGEFik2qPUc2l3ym9
	lq67P2RClGBpSwK69VPxvJI12kx/MHbX5e7zhYQDBl7Hc3Yp/Sy3pyHeFF2GOqUt4otiIhQCU/B
	LBGa0s6D+xvUxiX5QPLC/chS/ZxEdFs5gEukf7EVh9L0SF8hzcP6d9bgdRzaUdnUQJr8SZqZzl6
	JbqTA8MTjf8SZP7zvqKYiLpH65UVJSh7FMuGcLcl1TjnigivJx0ZPh71/nVaN7fQRD6u4g9XnXn
	foElS9ShzoBYvDTucBZrM8V+SSar3gfyfxW1JineVO+KTTnj6PaSQk+QMZBZ9QssjKef4epckh1
	dxGWhMeLbY8HGb2UPgP8/6PCS+wOHK59BSoO/VoqXqhgiYV6/7xRH+7CcvHttXmofA+WmGmHKRr
	aRt/yGG+w0cEhM2cObfsXaHBpzLmN0S+Ad+AnNDT5zYvj8+FioU=
X-Received: by 2002:a05:600c:46c9:b0:4a3:d327:6ed with SMTP id 5b1f17b1804b1-4bb55a5fdf6mr254839115e9.17.1794853780298;
        Mon, 16 Nov 2026 10:29:40 -0800 (PST)
Received: from [10.155.107.148] ([147.88.200.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb783965d4sm7171285e9.7.2026.11.16.10.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2026 10:29:39 -0800 (PST)
Message-ID: <1b7a7d94-e349-4f3c-b973-c365041c15f2@gmail.com>
Date: Mon, 16 Nov 2026 18:29:38 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/12] drm/atomic: Try to make atomic+async usable, and
 clear up the "async update" helper confusion
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, =?UTF-8?Q?Andr=C3=A9_Almeida?=
 <andrealmeid@igalia.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Christopher Snowhill <chris@kode54.net>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Dharma Balasubiramani <dharma.b@microchip.com>,
 Dmitry Baryshkov <lumag@kernel.org>, freedreno@lists.freedesktop.org,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Huacai Chen <chenhuacai@kernel.org>, Icenowy Zheng
 <zhengxingda@iscas.ac.cn>, Jianmin Lv <lvjianmin@loongson.cn>,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, =?UTF-8?Q?Ma=C3=ADra_Canal?=
 <mcanal@igalia.com>, Manikandan Muralidharan <manikandan.m@microchip.com>,
 Maxime Ripard <mripard@kernel.org>, Mingcong Bai <jeffbai@aosc.io>,
 nouveau@lists.freedesktop.org, Qianhai Wu <wuqianhai@loongson.cn>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Simon Ser <contact@emersion.fr>, wayland-devel@lists.freedesktop.org,
 Xaver Hugl <xaver.hugl@kde.org>, Xi Ruoyao <xry111@xry111.site>
References: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Erwin Springer <aot.lerwin@gmail.com>
In-Reply-To: <20261116091130.13950-1-ville.syrjala@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_102942_804728_4C1719AC 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CkFtIDE2LjExLjIwMjYgdW0gMTA6MTEgc2NocmllYiBWaWxsZSBTeXJqYWxhOgo+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgd2Vp
cmQgdWFwaSBzZW1hbnRpY3Mgb2YgdGhlIGF0b21pYyBhc3luYyBmbGlwIHN1cHBvcnQgbWFrZSBp
dAo+IHJlYWxseSBoYXJkIGZvciBkcml2ZXJzIHRvIGltcGxlbWVudC4gVHJ5IHRvIGZpeCB0aGF0
IGJ5IGZpbHRlcmluZwo+IG91dCB0aGUgbm8tb3AganVuayBmcm9tIHRoZSBjb21taXQgdGhhdCB1
c2Vyc3BhY2UgbGlrZXMgdG8gcHV0IHRoZXJlLgo+Cj4gQWxzbyBhIGxvdCBvZiBwZW9wbGUgYXJl
IGFwcGFyZW50bHkgY29uZnVzaW5nIHRoZQo+IC5hdG9taWNfYXN5bmNfe3VwZGF0ZSxjaGVja30o
KSBoYWNrIHdpdGggYXN5bmMgZmxpcHMuIFRoZSB0d28KPiBhcmUgY29tcGxldGVseSBvcnRob2dv
bmFsLCBzbyB0cnkgdG8gY2xlYXIgdXAgdGhhdCBtZXNzIGJ5Cj4gcmVuYW1pbmcgdGhlIGhhY2sg
dG8gLmF0b21pY19ieXBhc3Nfe3VwZGF0ZSxjaGVja30oKS4KPgo+IFRPRE86IGF0b21pYythc3lu
YyBpcyBpbiBzZXJpb3VzIG5lZWQgdG8gcHJvcGVyIHRlc3RzLCBzb21laG93Cj4gICAgICAgIGFs
bCB0aGF0IHNlZW1zIHRvIGhhdmUgZ290dGVuIHNraXBwZWQgd2hlbiB0aGUgZmVhdHVyZQo+ICAg
ICAgICB3YXMgYWRkZWQgOigKCnRoYW5rcywgdGhpcyBmaXhlcyB0aGUgS1dpbiBjYXNlIGZvciBt
ZSwgc28gbXkgcGF0Y2ggaXMgbm8gbG9uZ2VyCm5lZWRlZC4uCgp0ZXN0ZWQgb24gUmFwdG9yIExh
a2UtVSAoSXJpcyBYZSkgd2l0aCB1bm1vZGlmaWVkIEtXaW4gNi44LjIgYW5kIGEKZnVsbHNjcmVl
biBjbGllbnQgdGhhdCByZXF1ZXN0cyB0ZWFyaW5nIHRocm91Z2ggd3BfdGVhcmluZ19jb250cm9s
X3YxLAp3aXRob3V0IG15IHBhdGNoLiBJIGFwcGxpZWQgdGhlIHNlcmllcyB0byB0aGUgQ2FjaHlP
UyA3LjMuNCBrZXJuZWwsCnRoZSBvbmx5IGNvbmZsaWN0cyB3ZXJlIHRoZSByZW5hbWVzIGluIGFt
ZGdwdSBhbmQgbXNtLgoKQmVmb3JlLCBub25lIG9mIGFib3V0IDM1MCBmcmFtZXMgcGVyIHJ1biB3
YXMgcHJlc2VudGVkIHdpdGhvdXQgdnN5bmMuCldpdGggdGhlIHNlcmllcyAzMzMwIG9mIDMzMzYg
ZnJhbWVzIHRlYXIgb3ZlciBmb3VyIHJ1bnMgKHdpdGggYW5kCndpdGhvdXQgQ0NTIG1vZGlmaWVy
cyksIGFuZCB0aGUgImFzeW5jIGZsaXAgbm90IHN1cHBvcnRlZCIgbWVzc2FnZSBpcwpnb25lLiBX
aGF0IGlzIHN0aWxsIHJlamVjdGVkIGlzIHRoZSBmaXJzdCBmbGlwIGFmdGVyIHRoZSBtb2RpZmll
ciBvcgpmb3JtYXQgY2hhbmdlZCwgb25jZSBwZXIgcnVuLCBhcyBpbnRlbmRlZCwgYW5kIGluIHRo
cmVlIG9mIHRoZSBydW5zCm9uZSBjb21taXQgdGhhdCB0b3VjaGVzIHRoZSBjdXJzb3IgcGxhbmUs
IHdoaWNoIGNhbid0IGRvIGFzeW5jIGZsaXBzOgoKIMKgIFtQTEFORToxNDY6Y3Vyc29yIEFdIGRv
ZXMgbm90IHN1cHBvcnQgYXN5bmMgZmxpcHMKTm8gd2FybmluZ3MgYW5kIG5vIGZsaXBfZG9uZSB0
aW1lb3V0cyBpbiB0aGUgbG9nLgoKSWYgeW91IHRoaW5rIGl0IGZpdHMsIGZlZWwgZnJlZSB0byBh
ZGQ6CgpSZXBvcnRlZC1ieTogRXJ3aW4gU3ByaW5nZXIgPGFvdC5sZXJ3aW5AZ21haWwuY29tPgpU
ZXN0ZWQtYnk6IEVyd2luIFNwcmluZ2VyIDxhb3QubGVyd2luQGdtYWlsLmNvbT4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
