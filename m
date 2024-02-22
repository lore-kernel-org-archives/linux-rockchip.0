Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C90C5479F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cOOXY/2X1fxpiLoe35xFwcMK30kEAxVuLvJ1ilp994c=; b=gjqlBvKMYYukSz
	GHCgK/qNbuwvpuwDT/FwMZmXxv4wrJZAaCt8g9h/ZODGHkg3a7usgiuOEZTS5MdaZO+PXoPcPqeCI
	1NR0lVHBsipQofw6woi92nJb71r2y+a5tgo7ejuMFhJvjxUwry7raWz2EPzaYBBeGdG5n/hF2FPin
	h4dG5x8WvzHv5f1OvU++CChsutNQc8BcrQZFwkAl1l/b/l8trWbEl2Y5u9RVEr093OEFvtRWI3YV5
	BG03PvOUOHL4uHMqj/lfTSSxRJCGY6n5jhm/H28DhUnB32I6MxxQ0Xf9tcnSDQ7/GMbQv+1Y/njHD
	MbGI7pctgX8uWarCbxjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD3A-00000005pL5-0s4m;
	Thu, 22 Feb 2024 17:40:00 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD2x-00000005pCJ-3zbY
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:39:55 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-42a029c8e62so14481121cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623586; x=1709228386; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SmC4SQg9RJFTyxACzu+4WUHQYE29YjgzDeLpVcyOgV4=;
        b=bogOwhGho5VUYQf6yNuUPfwPi2KD7wLQJSttqG5auI643ZUm4+x5SWdl8KRIfuyk1J
         U1JIXTK3sWVu9g/lJD80b3SYrRcv6FoM7BoQaeYNAMYKIabBnZc90/eZ482UmgjaNPf6
         S9alXNp9pBYCkGfIGCMx6JtM1DaIEyToj9MH/BZZGpzsfX/IwnaJUe4Eta5SmWbQ+YOD
         GRFQJl66ivUTjzMLQ94x5JaksAQ8Zaaxb9EClZIL+qNvyuotGXe6E5YlB7czDgaOqZuD
         zWz07GqmR/afEF65eZsmvSV+5SefLl/kN72Q2T//+6rJC7Kh+yKO29PqGoimbP9TxI/Q
         asVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623586; x=1709228386;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SmC4SQg9RJFTyxACzu+4WUHQYE29YjgzDeLpVcyOgV4=;
        b=LnNtA6sGj9nTmrxiwmFq3iohRPO9t8rm11I0wg4HG5qMXQgVqJyyRjsmyVNFEPYGIQ
         AXocorAj2ijvPCWZjHKMuBY+uNAS/qhTysQ5KEOj+znRKJKc7YLIcRNykp3ynGPFlc5c
         PRgtvN1mpCIkAJDRlR6bsuKVJUPKtmTUWZ/u9CvtBpvZaVFTIQPZ2KEqmqeH1U9K/q59
         oomT2nme+2YcgV8NpIm8J8jgfnHkj4LatEF25hTsYsMgqEgXLN6C0729kbuHP4d1z8eR
         mriLwngvDrJ8gisSBRjPlrcPjLZHTPlKuQhVgfWQbZ/WUDd/AL0VLVx7fO4lfN6juS7I
         WiCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHgYpsrw8Nj/RWkkoANov7j7vVnIFasoC79PGu+YbBtak7Hwi7296LJFGAFB0Ue43tyFjhrNRsowGE1NPRrW8OcVgw5G/sM906RL4hkVG8c6H4
X-Gm-Message-State: AOJu0Yy3/pkGpZoKCzTZjUHZgN3Kn+MIRoC2OG+ZA5rj+dKM0O6eLns9
	IPEMeT1PBKyngumjnsCtg6hyGVJMNPa2A6kLfxzmHY47xJWudbULukBl8q34gJM=
X-Google-Smtp-Source: AGHT+IHQazQ2VKGKYiiCB/F+URR0eEgUMsL+eJQ7E97VwpEkplwTztlYNQqqnsB6QCcvUbBxCire4A==
X-Received: by 2002:a05:622a:3d0:b0:42c:71ea:9b28 with SMTP id k16-20020a05622a03d000b0042c71ea9b28mr28604094qtx.32.1708623585634;
        Thu, 22 Feb 2024 09:39:45 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:45 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alim.akhtar@samsung.com,
	alyssa@rosenzweig.io,
	asahi@lists.linux.dev,
	baolu.lu@linux.intel.com,
	bhelgaas@google.com,
	cgroups@vger.kernel.org,
	corbet@lwn.net,
	david@redhat.com,
	dwmw2@infradead.org,
	hannes@cmpxchg.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jernej.skrabec@gmail.com,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	krzysztof.kozlowski@linaro.org,
	linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	lizefan.x@bytedance.com,
	marcan@marcan.st,
	mhiramat@kernel.org,
	m.szyprowski@samsung.com,
	pasha.tatashin@soleen.com,
	paulmck@kernel.org,
	rdunlap@infradead.org,
	robin.murphy@arm.com,
	samuel@sholland.org,
	suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev,
	thierry.reding@gmail.com,
	tj@kernel.org,
	tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com,
	rientjes@google.com,
	bagasdotme@gmail.com,
	mkoutny@suse.com
Subject: [PATCH v5 00/11] IOMMU memory observability
Date: Thu, 22 Feb 2024 17:39:26 +0000
Message-ID: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_093950_037900_DADD78DD 
X-CRM114-Status: GOOD (  17.10  )
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

LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQpDaGFuZ2Vsb2cKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQp2NToKLSBTeW5jZWQgd2l0aCB2
Ni44LXJjNQotIEFkZGVkOiBBY2tlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tp
QHNhbXN1bmcuY29tPgotIEFkZGVkOiBBY2tlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5z
a3JhYmVjQGdtYWlsLmNvbT4KLSBBZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gUm9iaW4g
TXVycGh5OgogIFVwZGF0ZWQgdGhlIGhlYWRlciBjb21tZW50IGluIGlvbW11LXBhZ2VzLmgKICBS
ZW1vdmVkIF9faW9tbXVfYWxsb2NfcGFnZXNfbm9kZSgpLCBpbnZva2UKICBpb21tdV9hbGxvY19w
YWdlc19ub2RlIGRpcmVjdGx5LgogIFJlbW92ZWQgdW51c2VkOiBfX2lvbW11X2FsbG9jX3BhZ2Vf
bm9kZSgpCiAgUmVtb3ZlZCBfX2lvbW11X2ZyZWVfcGFnZSgpCiAgUmVuYW1lZDogaW9tbXVfZnJl
ZV9wYWdlc19saXN0KCkgLT4gaW9tbXVfcHV0X3BhZ2VzX2xpc3QoKQogIEFkZGVkIG1pc3Npbmcg
aW9tbXVfcHV0X3BhZ2VzX2xpc3QoKSB0byBkbWEtaW9tbXUuYyBpbgogIGlvbW11L2RtYTogdXNl
IGlvbW11X3B1dF9wYWdlc19saXN0KCkgdG8gcmVsZWFlIGZyZWVsaXN0Cgp2NDoKLSBTeW5jZWQg
d2l0aCB2Ni44LXJjMwotIFVwZGF0ZWQgY29tbWl0IGxvZyBmb3IgImlvbW11OiBhY2NvdW50IElP
TU1VIGFsbG9jYXRlZCBtZW1vcnkiIGFzCiAgc3VnZ2VzdGVkIGJ5IE1pY2hhbCBLb3V0bsO9Ci0g
QWRkZWQgbW9yZSBBY2tlZC1ieXMgRGF2aWQgUmllbnRqZXMgYW5kIFRoaWVycnkgUmVkaW5nCi0g
QWRkZWQgVGVzdGVkLWJ5IEJhZ2FzIFNhbmpheWEuCgp2MzoKLSBTeW5jIHdpdGggdjYuNy1yYzcK
LSBBZGRyZXNzZWQgY29tbWVudHMgZnJvbSBEYXZpZCBSaWVudGplczogcy9wYWdlcy9wYWdlLywg
YWRkZWQKICB1bmxpa2VseSgpIGludG8gdGhlIGJyYW5jaGVzLCBleHBhbmRlZCBjb21tZW50IGZv
cgogIGlvbW11X2ZyZWVfcGFnZXNfbGlzdCgpLgotIEFkZGVkIEFja2VkLWJ5czogRGF2aWQgUmll
bnRqZXMKCnYyOgotIEFkZGVkIFJldmlld2VkLWJ5IEphbm5lIEdydW5hdQotIFN5bmMgd2l0aCA2
LjcuMC1yYzMKLSBTZXBhcmF0ZWQgZm9ybSB0aGUgc2VyaWVzIHBhdGNoZXM6CnZob3N0LXZkcGE6
IGFjY291bnQgaW9tbXUgYWxsb2NhdGlvbnMKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjMxMTMwMjAwNDQ3LjIzMTk1NDMtMS1wYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tCnZmaW86IGFj
Y291bnQgaW9tbXUgYWxsb2NhdGlvbnMKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMx
MTMwMjAwOTAwLjIzMjA4MjktMS1wYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tCmFzIHN1Z2dlc3Rl
ZCBieSBKYXNvbiBHdW50aG9ycGUKLSBGaXhlZCBTUEFSQyBidWlsZCBpc3N1ZSBkZXRlY3RlZCBi
eSBrZXJuZWwgdGVzdCByb2JvdAotIERyb3AgdGhlIGZvbGxvd2luZyBwYXRjaGVzIGFzIHRoZXkg
ZG8gYWNjb3VudCBpb21tdSBwYWdlIHRhYmxlczoKaW9tbXUvZG1hOiB1c2UgcGFnZSBhbGxvY2F0
aW9uIGZ1bmN0aW9uIHByb3ZpZGVkIGJ5IGlvbW11LXBhZ2VzLmgKaW9tbXUvZnNsOiB1c2UgcGFn
ZSBhbGxvY2F0aW9uIGZ1bmN0aW9uIHByb3ZpZGVkIGJ5IGlvbW11LXBhZ2VzLmgKaW9tbXUvaW9t
bXVmZDogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdl
cy5oCmFzIHN1Z2dlc3RlZCBieSBSb2JpbiBNdXJwaHkuIFRoZXNlIHBhdGNoZXMgYXJlIG5vdCBy
ZWxhdGVkIHRvIElPTU1VCnBhZ2UgdGFibGVzLiBXZSBtaWdodCBuZWVkIHRvIGRvIGEgc2VwYXJh
dGUgd29yayB0byBzdXBwb3J0IERNQQpvYnNlcnZhYmlsaXR5LgotIFJlbW92ZSBzdXBwb3J0IGlv
bW11L2lvLXBndGFibGUtYXJtLXY3cyBhcyB0aGUgMm5kIGxldmVsIHBhZ2VzIGFyZQp1bmRlciBh
IHBhZ2Ugc2l6ZSwgdGhhbmtzIFJvYmluIE11cnBoeSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuCgot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCkRlc2NyaXB0aW9uCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSU9NTVUgc3Vic3lzdGVtIG1h
eSBjb250YWluIHN0YXRlIHRoYXQgaXMgaW4gZ2lnYWJ5dGVzLiBNYWpvcml0eSBvZiB0aGF0CnN0
YXRlIGlzIGlvbW11IHBhZ2UgdGFibGVzLiBZZXQsIHRoZXJlIGlzIGN1cnJlbnRseSwgbm8gd2F5
IHRvIG9ic2VydmUKaG93IG11Y2ggbWVtb3J5IGlzIGFjdHVhbGx5IHVzZWQgYnkgdGhlIGlvbW11
IHN1YnN5c3RlbS4KClRoaXMgcGF0Y2ggc2VyaWVzIHNvbHZlcyB0aGlzIHByb2JsZW0gYnkgYWRk
aW5nIGJvdGggb2JzZXJ2YWJpbGl0eSB0bwphbGwgcGFnZXMgdGhhdCBhcmUgYWxsb2NhdGVkIGJ5
IElPTU1VLCBhbmQgYWxzbyBhY2NvdW50YWJpbGl0eSwgc28KYWRtaW5zIGNhbiBsaW1pdCB0aGUg
YW1vdW50IGlmIHZpYSBjZ3JvdXBzLgoKVGhlIHN5c3RlbS13aWRlIG9ic2VydmFiaWxpdHkgaXMg
dXNpbmcgL3Byb2MvbWVtaW5mbzoKU2VjUGFnZVRhYmxlczogICAgNDM4MTc2IGtCCgpDb250YWlu
cyBJT01NVSBhbmQgS1ZNIG1lbW9yeS4KClBlci1ub2RlIG9ic2VydmFiaWxpdHk6Ci9zeXMvZGV2
aWNlcy9zeXN0ZW0vbm9kZS9ub2RlTi9tZW1pbmZvCk5vZGUgTiBTZWNQYWdlVGFibGVzOiAgICA0
MjIyMDQga0IKCkNvbnRhaW5zIElPTU1VIGFuZCBLVk0gbWVtb3J5IGluIHRoZSBnaXZlbiBOVU1B
IG5vZGUuCgpQZXItbm9kZSBJT01NVSBvbmx5IG9ic2VydmFiaWxpdHk6Ci9zeXMvZGV2aWNlcy9z
eXN0ZW0vbm9kZS9ub2RlTi92bXN0YXQKbnJfaW9tbXVfcGFnZXMgMTA1NTU1CgpDb250YWlucyBu
dW1iZXIgb2YgcGFnZXMgSU9NTVUgYWxsb2NhdGVkIGluIHRoZSBnaXZlbiBub2RlLgoKQWNjb3Vu
dGFiaWxpdHk6IHVzaW5nIHNlY19wYWdldGFibGVzIGNncm91cC12MiBtZW1vcnkuc3RhdCBlbnRy
eS4KCldpdGggdGhlIGNoYW5nZSwgaW92YV9zdHJlc3NbMV0gc3RvcHMgYXMgbGltaXQgaXMgcmVh
Y2hlZDoKCiQgLi9pb3ZhX3N0cmVzcwppb3ZhIHNwYWNlOiAgICAgMFQgICAgICBmcmVlIG1lbW9y
eTogICA0OTdHCmlvdmEgc3BhY2U6ICAgICAxVCAgICAgIGZyZWUgbWVtb3J5OiAgIDQ5NUcKaW92
YSBzcGFjZTogICAgIDJUICAgICAgZnJlZSBtZW1vcnk6ICAgNDkzRwppb3ZhIHNwYWNlOiAgICAg
M1QgICAgICBmcmVlIG1lbW9yeTogICA0OTFHCgpzdG9wcyBhcyBsaW1pdCBpcyByZWFjaGVkLgoK
VGhpcyBzZXJpZXMgZW5jb3Jwb3JhdGVzIHN1Z2dlc3Rpb25zIHRoYXQgY2FtZSBmcm9tIHRoZSBk
aXNjdXNzaW9uCmF0IExQQyBbMl0uCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KWzFdIGh0dHBzOi8vZ2l0aHViLmNv
bS9zb2xlZW4vaW92YV9zdHJlc3MKWzJdIGh0dHBzOi8vbHBjLmV2ZW50cy9ldmVudC8xNy9jb250
cmlidXRpb25zLzE0NjYKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpQcmV2aW91cyB2ZXJzaW9ucwp2MTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMxMTI4MjA0OTM4LjE0NTM1ODMtMS1wYXNoYS50YXRh
c2hpbkBzb2xlZW4uY29tCnYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDIz
MTEzMDIwMTUwNC4yMzIyMzU1LTEtcGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbQp2MzogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMxMjI2MjAwMjA1LjU2MjU2NS0xLXBhc2hhLnRhdGFz
aGluQHNvbGVlbi5jb20KdjQ6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDIwNzE3
NDEwMi4xNDg2MTMwLTEtcGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbQotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpQ
YXNoYSBUYXRhc2hpbiAoMTEpOgogIGlvbW11L3Z0LWQ6IGFkZCB3cmFwcGVyIGZ1bmN0aW9ucyBm
b3IgcGFnZSBhbGxvY2F0aW9ucwogIGlvbW11L2RtYTogdXNlIGlvbW11X3B1dF9wYWdlc19saXN0
KCkgdG8gcmVsZWFlIGZyZWVsaXN0CiAgaW9tbXUvYW1kOiB1c2UgcGFnZSBhbGxvY2F0aW9uIGZ1
bmN0aW9uIHByb3ZpZGVkIGJ5IGlvbW11LXBhZ2VzLmgKICBpb21tdS9pby1wZ3RhYmxlLWFybTog
dXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieQogICAgaW9tbXUtcGFnZXMu
aAogIGlvbW11L2lvLXBndGFibGUtZGFydDogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBw
cm92aWRlZCBieQogICAgaW9tbXUtcGFnZXMuaAogIGlvbW11L2V4eW5vczogdXNlIHBhZ2UgYWxs
b2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCiAgaW9tbXUvcm9ja2No
aXA6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJvdmlkZWQgYnkgaW9tbXUtcGFnZXMu
aAogIGlvbW11L3N1bjUwaTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBi
eSBpb21tdS1wYWdlcy5oCiAgaW9tbXUvdGVncmEtc21tdTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBm
dW5jdGlvbiBwcm92aWRlZCBieQogICAgaW9tbXUtcGFnZXMuaAogIGlvbW11OiBvYnNlcnZhYmls
aXR5IG9mIHRoZSBJT01NVSBhbGxvY2F0aW9ucwogIGlvbW11OiBhY2NvdW50IElPTU1VIGFsbG9j
YXRlZCBtZW1vcnkKCiBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2Nncm91cC12Mi5yc3QgfCAg
IDIgKy0KIERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvcHJvYy5yc3QgICAgICB8ICAgNCArLQog
ZHJpdmVycy9pb21tdS9hbWQvYW1kX2lvbW11LmggICAgICAgICAgIHwgICA4IC0KIGRyaXZlcnMv
aW9tbXUvYW1kL2luaXQuYyAgICAgICAgICAgICAgICB8ICA5MSArKysrKystLS0tLS0KIGRyaXZl
cnMvaW9tbXUvYW1kL2lvX3BndGFibGUuYyAgICAgICAgICB8ICAxMyArLQogZHJpdmVycy9pb21t
dS9hbWQvaW9fcGd0YWJsZV92Mi5jICAgICAgIHwgIDIwICstLQogZHJpdmVycy9pb21tdS9hbWQv
aW9tbXUuYyAgICAgICAgICAgICAgIHwgIDEzICstCiBkcml2ZXJzL2lvbW11L2RtYS1pb21tdS5j
ICAgICAgICAgICAgICAgfCAgIDcgKy0KIGRyaXZlcnMvaW9tbXUvZXh5bm9zLWlvbW11LmMgICAg
ICAgICAgICB8ICAxNCArLQogZHJpdmVycy9pb21tdS9pbnRlbC9kbWFyLmMgICAgICAgICAgICAg
IHwgIDE2ICstCiBkcml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmMgICAgICAgICAgICAgfCAgNDcg
KystLS0tCiBkcml2ZXJzL2lvbW11L2ludGVsL2lvbW11LmggICAgICAgICAgICAgfCAgIDIgLQog
ZHJpdmVycy9pb21tdS9pbnRlbC9pcnFfcmVtYXBwaW5nLmMgICAgIHwgIDE2ICstCiBkcml2ZXJz
L2lvbW11L2ludGVsL3Bhc2lkLmMgICAgICAgICAgICAgfCAgMTggKy0tCiBkcml2ZXJzL2lvbW11
L2ludGVsL3N2bS5jICAgICAgICAgICAgICAgfCAgMTEgKy0KIGRyaXZlcnMvaW9tbXUvaW8tcGd0
YWJsZS1hcm0uYyAgICAgICAgICB8ICAxNSArLQogZHJpdmVycy9pb21tdS9pby1wZ3RhYmxlLWRh
cnQuYyAgICAgICAgIHwgIDM3ICsrLS0tCiBkcml2ZXJzL2lvbW11L2lvbW11LXBhZ2VzLmggICAg
ICAgICAgICAgfCAxODYgKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2lvbW11L3Jv
Y2tjaGlwLWlvbW11LmMgICAgICAgICAgfCAgMTQgKy0KIGRyaXZlcnMvaW9tbXUvc3VuNTBpLWlv
bW11LmMgICAgICAgICAgICB8ICAgNyArLQogZHJpdmVycy9pb21tdS90ZWdyYS1zbW11LmMgICAg
ICAgICAgICAgIHwgIDE4ICsrLQogaW5jbHVkZS9saW51eC9tbXpvbmUuaCAgICAgICAgICAgICAg
ICAgIHwgICA1ICstCiBtbS92bXN0YXQuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
IDMgKwogMjMgZmlsZXMgY2hhbmdlZCwgMzYxIGluc2VydGlvbnMoKyksIDIwNiBkZWxldGlvbnMo
LSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2lvbW11L2lvbW11LXBhZ2VzLmgKCi0tIAoy
LjQ0LjAucmMwLjI1OC5nNzMyMGU5NTg4Ni1nb29nCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
