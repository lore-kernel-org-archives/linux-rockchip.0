Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE7BAC46CD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 18:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJk2kZGdS+tB6LQxPiS12nutw/ZUnGkYJcSK7mizoiA=; b=oJHK3ANEdo0Umh
	MQs2V92njjgkR9sU90zESb8LJuWtLB/L+LSge3UJBp0w4CSY/hVL3gC7dG2rPzaP/XoyCcjTBo58d
	8NjXZIr8qMwUtNGbDMjLCy0MS8DedGofUjQ+rJS9RGDE9O1emPsHjryV1LJ3EWc1sY+qsKcmQ84Q0
	8u9XqoIz6Dgnc1EGJYCS+hpMndoNJ07A9GlqnEUT/d+61Dswd62ownPjz4P5dAynC2ASwNzjSVEdw
	CgkCBu6SmPurgd9nfwpANTnGtxaMRl2VSx3X4jOQB4pREefg+SAWr/gn/a2cMMbseX1cxixmhgI2y
	Wq0/zAtkfXQQp/ahLqoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIC6E-00DNJF-3B;
	Tue, 26 Dec 2023 18:24:18 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIC6B-00DNHX-1H
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 18:24:17 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4277e7146abso43076521cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 10:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703615053; x=1704219853; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nbpck61YwtlHFMw5U/Lo3wdHWoHYEKh8KkvQ9gudgQY=;
        b=Oo16qrTSo5c4sdRxCHJam2YFqFWwzxUqLkNGh+SuuGWpfoGgfha4Yyrysemo669Ye2
         16Jh2/sHKSwa6BLz4Gal6lvnW4dEvYyinPjxSwWndHkNSsHu52ojdul0ZYLVouTibCZ4
         i3fAS/vqLpTjnolUP3oXgxBkOdvtmtOjJHNTnLl+zcB92mnoAdsDRZiFqvawRur1X52+
         6kGwLZS1KixvmLbLQncQ+w242YKFth9BXVUvPdWKPT6q043wrwd0ZcMCaJ5pdkdSLv1Y
         fIRvZG4weGp8lJn0cYizo1NBwb3HkcVNbDT/d9XjGLuKdpbQCYmVu7TkQL4LjF5kt6QK
         vzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703615053; x=1704219853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nbpck61YwtlHFMw5U/Lo3wdHWoHYEKh8KkvQ9gudgQY=;
        b=FOQgZUIo6vol/gNB7AkWOT20t2HRR++GOBpxUFA6bWB+oeS3Z8uiQ3mz/S5H3Hx1yi
         NmU/E5UbMLNIJk6VBlD8ZdC+70ifjkEw5D3y+gNgGQX8AqNP5WrObN71qJ85Uhn14HEi
         HJ7Vb3WN/7cuPHmQIoDVGrhhmVhS0yX9tzFHA7cD/37orb0FFN7sAnD4hfeA1iHMdL92
         FnQ6VQQoTxOQCzaosY5MUDyYJshJ3wFxFjJSXh1B91qbiYYD9sHRhWz+Gj9QvpJPtqEk
         irwYa2VcPbAS3xcEX0hUcC+pkIVe+mH4ak/GgA4Z9OaP/RytTysH+LBNtTHmGchl4zoP
         IJWA==
X-Gm-Message-State: AOJu0YymLnRxhRV7p+9ex0U6Pcd2DOUzdsEretHXf1bYxWZsBRWmxJxk
	JrSc28ZNgA+Gfqm1z51WkNV5qTRNKZACPYAzBtMrKTNmJNckTw==
X-Google-Smtp-Source: AGHT+IFWmjNlQw3TJVBvqU22wp4AVqBkS4XAMC4VqHZ635t1MVhw4Y6RPWn1r1oeRtxRwF8xQLfAKRRH1Aun3pHsf+k=
X-Received: by 2002:a05:622a:307:b0:427:7c4f:9d1a with SMTP id
 q7-20020a05622a030700b004277c4f9d1amr12102912qtw.31.1703615053674; Tue, 26
 Dec 2023 10:24:13 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-16-pasha.tatashin@soleen.com> <20231225110930-mutt-send-email-mst@kernel.org>
In-Reply-To: <20231225110930-mutt-send-email-mst@kernel.org>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 26 Dec 2023 13:23:37 -0500
Message-ID: <CA+CK2bCTVqgW2uuSi7WqwGKkd7GT+QoSad2zkNun74wVV_J0Yw@mail.gmail.com>
Subject: Re: [PATCH 15/16] vhost-vdpa: account iommu allocations
To: "Michael S. Tsirkin" <mst@redhat.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com, joro@8bytes.org, 
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, netdev@vger.kernel.org, 
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com, 
	samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
	thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
	vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_102415_457618_65868D0F 
X-CRM114-Status: UNSURE (   7.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBEZWMgMjUsIDIwMjMgYXQgMTE6MDnigK9BTSBNaWNoYWVsIFMuIFRzaXJraW4gPG1z
dEByZWRoYXQuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDI4LCAyMDIzIGF0IDA4OjQ5OjM3
UE0gKzAwMDAsIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+ID4gaW9tbXUgYWxsb2NhdGlvbnMgc2hv
dWxkIGJlIGFjY291bnRlZCBpbiBvcmRlciB0byBhbGxvdyBhZG1pbnMgdG8KPiA+IG1vbml0b3Ig
YW5kIGxpbWl0IHRoZSBhbW91bnQgb2YgaW9tbXUgbWVtb3J5Lgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFBhc2hhIFRhdGFzaGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPgo+Cj4KPiBBY2tl
ZC1ieTogTWljaGFlbCBTLiBUc2lya2luIDxtc3RAcmVkaGF0LmNvbT4KClRoYW5rIHlvdSwKUGFz
aGEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
