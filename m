Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E12BDC001B0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 10:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGjKDnFOLWo10PrkgkdYi4c1OuZcaWs49/+ghKttApE=; b=u+UBhWpljjU32/
	0rf6WtwntYQS9a3FER5B8TvEU67U74/LyNKtX6L7oEAWDyYdPDdGjplwZy6ey9yeUxCD3FM94TMo6
	6kjwnf1/c5U38qN4zrB2rNKWXze2ARPPIoLWN4uy+XynwHdIESJre/Cb2O0IyX/x8IS9hSsqr3/fA
	JU92wLwLv9oKDQmCIjjPX5I9v84qYTNTpD2Zfml29t1WkBDF4VdD9qmUdo3N5GvAxRzOK7jeEVJ0F
	8oBZDcuZimzjRVn/tfa0lcBlq09fPv8Q+SWmhI88Yb4SniDcpsfN77Q9js6iYBNQ/4hB3HdFfFZw+
	l1PSYpKM4HdcmuCDDP5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTK0T-002EwQ-1P;
	Tue, 08 Aug 2023 10:32:05 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTK0Q-002Euq-1W
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Aug 2023 10:32:04 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id ada2fe7eead31-4476a9e8812so2270544137.2
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Aug 2023 03:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691490719; x=1692095519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GuLpUzj425ksYkwQNwyCuqLBetYDot3qhVx39suIMw0=;
        b=CW1wmSS3XnGDPuztAUvBaWlWSmKupzqD7zKqc2IMowY3PPppepGN4v5MgAqnF9DH02
         AdD5qc49aYsLGv23+ZifJ1z6ilNUrRVGCerE30r2PozoroL1KW70ZvhPs6F72OOA+gqI
         pliAgJFlXTEHnNhobcHkrX952OYeH8QLgP2tM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691490719; x=1692095519;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GuLpUzj425ksYkwQNwyCuqLBetYDot3qhVx39suIMw0=;
        b=eyuzU4l2qqQnJ5bxa7+rMp327InUIFP8+1QJIzIArrrMDxmC+LkHktoH1gsvs2/kMg
         h+zIEwmEVl48D48ksYo7ZhUTewOFKVbIE5AJTKQES8useRaS1xFD73tO2/ukRFP791RH
         qF7bB+lKyMheZuPSEoylPvIWQN4s3GtOqrzEC+OeFhKWRmjv74xbSsnjqwsajXuYknia
         8ICwTsvRRAz4ZhnUzMY8190WNCeRoauD4X4AkSH5anJ/9S2RuBdfARwoKMWPk9gGBy8r
         Tr13zXSKUuxcFGGOfSLM/nm6KodW/Ag1p0KF4odyTFeBg/n2HGmOoRa+p2DSAsRSuQuo
         J7Bg==
X-Gm-Message-State: AOJu0YzvEhRWnKOASjQAt46mIe3eH6uLFnP0ziuPBcxJ53qOUp40DKNw
	wXYoHXCwUDfXftoTlhhXnweMA3e9W9nW/4k8yvRfWQ==
X-Google-Smtp-Source: AGHT+IHe//IfhEQskoa+DmwWaMX7MNnPiXh2Oww7kuRlFj5Ce4sr0YypupqEhLK7goxUc4ZTN1/MKRprjeA1YzeduZA=
X-Received: by 2002:a05:6102:150:b0:437:e5ce:7e8f with SMTP id
 a16-20020a056102015000b00437e5ce7e8fmr6782940vsr.4.1691490719095; Tue, 08 Aug
 2023 03:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <0-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com> <ZNDpfCoeFxA56ZlU@8bytes.org>
In-Reply-To: <ZNDpfCoeFxA56ZlU@8bytes.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 8 Aug 2023 18:31:47 +0800
Message-ID: <CAGXv+5E-f9AteAYkmXYzVDZFSA_royc7-bS5LcrzzuHDnXccwA@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] Refine the locking for dev->iommu_group
To: Joerg Roedel <joro@8bytes.org>
Cc: Jason Gunthorpe <jgg@nvidia.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	David Woodhouse <dwmw2@infradead.org>, Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Orson Zhai <orsonzhai@gmail.com>, Robin Murphy <robin.murphy@arm.com>, 
	Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>, Will Deacon <will@kernel.org>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Alex Williamson <alex.williamson@redhat.com>, 
	Lu Baolu <baolu.lu@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_033202_507211_B0333489 
X-CRM114-Status: GOOD (  15.08  )
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

SGksCgpPbiBNb24sIEF1ZyA3LCAyMDIzIGF0IDg6NTTigK9QTSBKb2VyZyBSb2VkZWwgPGpvcm9A
OGJ5dGVzLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIEp1bCAzMSwgMjAyMyBhdCAwMjo1MDoyM1BN
IC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6Cj4gPiBKYXNvbiBHdW50aG9ycGUgKDEwKToK
PiA+ICAgaW9tbXU6IFJlbW92ZSB1c2VsZXNzIGdyb3VwIHJlZmNvdW50aW5nCj4gPiAgIGlvbW11
OiBBZGQgYSBsb2NrZGVwIGFzc2VydGlvbiBmb3IgcmVtYWluaW5nIGRldi0+aW9tbXVfZ3JvdXAg
cmVhZHMKPiA+ICAgaW9tbXU6IEFkZCBnZW5lcmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAoKQo+ID4g
ICBpb21tdS9zdW41MGk6IENvbnZlcnQgdG8gZ2VuZXJpY19zaW5nbGVfZGV2aWNlX2dyb3VwKCkK
PiA+ICAgaW9tbXUvc3ByZDogQ29udmVydCB0byBnZW5lcmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAo
KQo+ID4gICBpb21tdS9yb2NrY2hpcDogQ29udmVydCB0byBnZW5lcmljX3NpbmdsZV9kZXZpY2Vf
Z3JvdXAoKQo+ID4gICBpb21tdS9pcG1tdS12bXNhOiBDb252ZXJ0IHRvIGdlbmVyaWNfc2luZ2xl
X2RldmljZV9ncm91cCgpCj4gPiAgIGlvbW11L29tYXA6IENvbnZlcnQgdG8gZ2VuZXJpY19zaW5n
bGVfZGV2aWNlX2dyb3VwKCkKPiA+ICAgaW9tbXU6IENvbXBsZXRlIHRoZSBsb2NraW5nIGZvciBk
ZXYtPmlvbW11X2dyb3VwCj4gPiAgIGlvbW11L2ludGVsOiBGaXggbWlzc2luZyBsb2NraW5nIGZv
ciBzaG93X2RldmljZV9kb21haW5fdHJhbnNsYXRpb24oKQo+ID4KPiA+ICBkcml2ZXJzL2lvbW11
L2ludGVsL2RlYnVnZnMuYyAgfCAgMzQgKysrKy0tLS0KPiA+ICBkcml2ZXJzL2lvbW11L2lvbW11
LmMgICAgICAgICAgfCAxNTUgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4gPiAg
ZHJpdmVycy9pb21tdS9pcG1tdS12bXNhLmMgICAgIHwgIDIyICsrLS0tCj4gPiAgZHJpdmVycy9p
b21tdS9vbWFwLWlvbW11LmMgICAgIHwgIDMwICstLS0tLS0KPiA+ICBkcml2ZXJzL2lvbW11L29t
YXAtaW9tbXUuaCAgICAgfCAgIDIgKy0KPiA+ICBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11
LmMgfCAgMjIgKy0tLS0KPiA+ICBkcml2ZXJzL2lvbW11L3NwcmQtaW9tbXUuYyAgICAgfCAgMjQg
Ky0tLS0KPiA+ICBkcml2ZXJzL2lvbW11L3N1bjUwaS1pb21tdS5jICAgfCAgMjkgKystLS0tCj4g
PiAgaW5jbHVkZS9saW51eC9pb21tdS5oICAgICAgICAgIHwgICAzICsKPiA+ICA5IGZpbGVzIGNo
YW5nZWQsIDEzOCBpbnNlcnRpb25zKCspLCAxODMgZGVsZXRpb25zKC0pCj4KPiBBcHBsaWVkLCB0
aGFua3MgZm9yIHRoZSBuaWNlIGNsZWFudXAhCgpUaGlzIHNlcmllcyBzZWVtcyB0byBjYXVzZSBh
IGh1bmcgdGFzayBkdXJpbmcgYm9vdCBvbiBNZWRpYVRlayBwbGF0Zm9ybXMuCkl0IGhhbmdzIHdp
dGggbmV4dC0yMDIzMDgwOC4gUmV2ZXJ0aW5nIHRoZSAxMCBjb21taXRzIGZyb20gdGhpcyBzZXJp
ZXMKbWFrZXMgdGhlIHN5c3RlbSBib290IHVwIGFnYWluLgoKQ2hlbll1CgpMb2dzIGZvbGxvdy4K
CklORk86IHRhc2sgc3dhcHBlci8wOjEgYmxvY2tlZCBmb3IgbW9yZSB0aGFuIDEyMiBzZWNvbmRz
LgogICAgICBOb3QgdGFpbnRlZCA2LjUuMC1yYzUtbmV4dC0yMDIzMDgwOC0wODAwNC1nMzk2YmJl
MjNkYmY0ICM4NTkKImVjaG8gMCA+IC9wcm9jL3N5cy9rZXJuZWwvaHVuZ190YXNrX3RpbWVvdXRf
c2VjcyIgZGlzYWJsZXMgdGhpcyBtZXNzYWdlLgp0YXNrOnN3YXBwZXIvMCAgICAgICBzdGF0ZTpE
IHN0YWNrOjAgICAgIHBpZDoxICAgICBwcGlkOjAgICAgICBmbGFnczoweDAwMDAwMDA4CkNhbGwg
dHJhY2U6CiBfX3N3aXRjaF90bysweDEzOC8weDFlOAogX19zY2hlZHVsZSsweDcyOC8weDEzODgK
IHNjaGVkdWxlKzB4YTgvMHgxNzAKIHNjaGVkdWxlX3RpbWVvdXQrMHgxOWMvMHgxYjgKIF9fd2Fp
dF9mb3JfY29tbW9uKzB4MjUwLzB4MmMwCiB3YWl0X2Zvcl9jb21wbGV0aW9uKzB4MjgvMHg0MAog
X19mbHVzaF93b3JrKzB4MzdjLzB4NmMwCiBmbHVzaF93b3JrKzB4MWMvMHgzMAogZGVmZXJyZWRf
cHJvYmVfaW5pdGNhbGwrMHg2MC8weGQwCiBkb19vbmVfaW5pdGNhbGwrMHhlMC8weDRhMAoga2Vy
bmVsX2luaXRfZnJlZWFibGUrMHgzYTQvMHg3MzAKIGtlcm5lbF9pbml0KzB4MmMvMHgxZjgKIHJl
dF9mcm9tX2ZvcmsrMHgxMC8weDIwCklORk86IHRhc2sga3dvcmtlci91MTg6MTo2NyBibG9ja2Vk
IGZvciBtb3JlIHRoYW4gMTIyIHNlY29uZHMuCiAgICAgIE5vdCB0YWludGVkIDYuNS4wLXJjNS1u
ZXh0LTIwMjMwODA4LTA4MDA0LWczOTZiYmUyM2RiZjQgIzg1OQoiZWNobyAwID4gL3Byb2Mvc3lz
L2tlcm5lbC9odW5nX3Rhc2tfdGltZW91dF9zZWNzIiBkaXNhYmxlcyB0aGlzIG1lc3NhZ2UuCnRh
c2s6a3dvcmtlci91MTg6MSAgIHN0YXRlOkQgc3RhY2s6MCAgICAgcGlkOjY3ICAgIHBwaWQ6MiAg
ICAgIGZsYWdzOjB4MDAwMDAwMDgKV29ya3F1ZXVlOiBldmVudHNfdW5ib3VuZCBkZWZlcnJlZF9w
cm9iZV93b3JrX2Z1bmMKQ2FsbCB0cmFjZToKIF9fc3dpdGNoX3RvKzB4MTM4LzB4MWU4CiBfX3Nj
aGVkdWxlKzB4NzI4LzB4MTM4OAogc2NoZWR1bGUrMHhhOC8weDE3MAogc2NoZWR1bGVfcHJlZW1w
dF9kaXNhYmxlZCsweDQ0LzB4ODAKIF9fbXV0ZXhfbG9jaysweDNmYy8weDU5OAogbXV0ZXhfbG9j
a19uZXN0ZWQrMHgyYy8weDQwCiBfX2lvbW11X3Byb2JlX2RldmljZSsweGI4LzB4NmUwCiBwcm9i
ZV9pb21tdV9ncm91cCsweDE4LzB4MzgKIGJ1c19mb3JfZWFjaF9kZXYrMHhlNC8weDE2OAogYnVz
X2lvbW11X3Byb2JlKzB4OGMvMHgyNDAKIGlvbW11X2RldmljZV9yZWdpc3RlcisweDEyMC8weDFi
MAogbXRrX2lvbW11X3Byb2JlKzB4NDk0LzB4N2EwCiBwbGF0Zm9ybV9wcm9iZSsweDk0LzB4MTAw
CiByZWFsbHlfcHJvYmUrMHgxZTQvMHgzZTgKIF9fZHJpdmVyX3Byb2JlX2RldmljZSsweGMwLzB4
MWEwCiBkcml2ZXJfcHJvYmVfZGV2aWNlKzB4MTEwLzB4MWYwCiBfX2RldmljZV9hdHRhY2hfZHJp
dmVyKzB4ZjAvMHgxYjAKIGJ1c19mb3JfZWFjaF9kcnYrMHhmMC8weDE3MAogX19kZXZpY2VfYXR0
YWNoKzB4MTIwLzB4MjQwCiBkZXZpY2VfaW5pdGlhbF9wcm9iZSsweDFjLzB4MzAKIGJ1c19wcm9i
ZV9kZXZpY2UrMHhkYy8weGU4CiBkZWZlcnJlZF9wcm9iZV93b3JrX2Z1bmMrMHhmMC8weDE0MAog
cHJvY2Vzc19vbmVfd29yaysweDNiMC8weDkxMAogd29ya2VyX3RocmVhZCsweDMzYy8weDYxMAog
a3RocmVhZCsweDFkYy8weDFmMAogcmV0X2Zyb21fZm9yaysweDEwLzB4MjAKClNob3dpbmcgYWxs
IGxvY2tzIGhlbGQgaW4gdGhlIHN5c3RlbToKNCBsb2NrcyBoZWxkIGJ5IGt3b3JrZXIvdTE4OjEv
Njc6CiAjMDogZmZmZmZmODBjMDAxYjUzOCAoKHdxX2NvbXBsZXRpb24pZXZlbnRzX3VuYm91bmQp
eysuKy59LXswOjB9LCBhdDoKcHJvY2Vzc19vbmVfd29yaysweDJjNC8weDkxMAogIzE6IGZmZmZm
ZmMwODA3NzdkNDAgKGRlZmVycmVkX3Byb2JlX3dvcmspeysuKy59LXswOjB9LCBhdDoKcHJvY2Vz
c19vbmVfd29yaysweDJjNC8weDkxMAogIzI6IGZmZmZmZjgwYzE0MDkwZjggKCZkZXYtPm11dGV4
KXsuLi4ufS17MzozfSwgYXQ6IF9fZGV2aWNlX2F0dGFjaCsweDhjLzB4MjQwCiAjMzogZmZmZmZm
ODBjMTQwOTBmOCAoJmRldi0+bXV0ZXgpey4uLi59LXszOjN9LCBhdDoKX19pb21tdV9wcm9iZV9k
ZXZpY2UrMHhiOC8weDZlMAoxIGxvY2sgaGVsZCBieSBraHVuZ3Rhc2tkLzcwOgogIzA6IGZmZmZm
ZmUzNzlmOTQ1YTAgKHJjdV9yZWFkX2xvY2spey4uLi59LXsxOjJ9LCBhdDoKZGVidWdfc2hvd19h
bGxfbG9ja3MrMHgyNC8weDIyMAoKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09CgpLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogaHVuZ190YXNrOiBibG9ja2Vk
IHRhc2tzCkNQVTogNCBQSUQ6IDcwIENvbW06IGtodW5ndGFza2QgTm90IHRhaW50ZWQKNi41LjAt
cmM1LW5leHQtMjAyMzA4MDgtMDgwMDQtZzM5NmJiZTIzZGJmNCAjODU5CjU1NDI2ODU5YzI2NzA2
NGEzODEzMTJlYjg2OWU5NGMyODU2NmE4N2YKSGFyZHdhcmUgbmFtZTogR29vZ2xlIGp1bmlwZXIg
c2t1MTYgYm9hcmQgKERUKQpDYWxsIHRyYWNlOgogZHVtcF9iYWNrdHJhY2UrMHhhMC8weDEwMAog
c2hvd19zdGFjaysweDIwLzB4MzgKIGR1bXBfc3RhY2tfbHZsKzB4ZGMvMHgxNDgKIGR1bXBfc3Rh
Y2srMHgxYy8weDI4CiBwYW5pYysweDQ2MC8weDRkOAogd2F0Y2hkb2crMHg0YTQvMHg5ZDAKIGt0
aHJlYWQrMHgxZGMvMHgxZjAKIHJldF9mcm9tX2ZvcmsrMHgxMC8weDIwClNNUDogc3RvcHBpbmcg
c2Vjb25kYXJ5IENQVXMKS2VybmVsIE9mZnNldDogMHgyMmY3MDAwMDAwIGZyb20gMHhmZmZmZmZj
MDgwMDAwMDAwClBIWVNfT0ZGU0VUOiAweDQwMDAwMDAwCkNQVSBmZWF0dXJlczogMHgwMDAwMDAw
Yyw5MjAxMDAwMCwwODAwNDIxYgpNZW1vcnkgTGltaXQ6IG5vbmUKUmVib290aW5nIGluIDMwIHNl
Y29uZHMuLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
