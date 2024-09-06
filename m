Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000A2CE7AF3
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEeiNdoeG6JZ65GeXin2ySzXiL4mTxWRLfMIidf4NQA=; b=BR0nCBba/3Q4Is
	VQ+mp7QNxyCrmTmukoKT/9ly/t/c8zr23dbm9QvkEjPnmwz22PxNQV1Ewc3XpPbhpMElwUoia7tR1
	/5lBFzKHPFzqo98VyyHXakJ+HOZrurAPv4Uq+56k8bdRgRhw8/3Hm7ojnOLdJJZg9PybpZnq+053t
	kElaJctFcNgtliEq2ejJxKuZMhPnUy9urfcA7J0RkwxueucUhSC67v9gD8TWcSaj6+4HjN/fDgx4X
	1kNgS87TdMqMd2fmW3TiPSbNPXaPAgqnnqtfIBkhLLKkfBXrClRH86AjJbLHRVWAi6taZ7fbZST3Z
	P6f0+cjlNI0feyxEzX6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smV7I-0000000BU3n-0uWn;
	Fri, 06 Sep 2024 09:18:56 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smV6I-0000000BTy2-3qSy;
	Fri, 06 Sep 2024 09:17:56 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-206f9b872b2so2029795ad.3;
        Fri, 06 Sep 2024 02:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725614274; x=1726219074; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdSscxu4iwCci+/8FixpdemFIaPGSwznJT41/j2DIjA=;
        b=ffXkhcAOesvicVgEadjYepyTgmR3eqG6gOk8+vo5reDG2lSa+G+Y5XkITrfOqNxc3h
         I3KHgyzplcwLEYQ7wtQm9J1JQ2yE29rgaUTfXm9gxD5GbQco8qR7J5QR06hQZvQz3Vie
         kDmtnGzX19x6mW+lUNVSjQzhZa9lfYVmSMrmP4aWIsvkTWivRvE9WjnirqYywWx+mIcz
         9YonscwKwvNQ+Ra21D4eeEdbLUsvFiJVBfZx+sLyOdcChS7zLjNzKAMOyDt3NovBiP9R
         CIXSTKRU1qmAdtTptjiEOiYkS4/jnhc0750QJ62kX54O6SWYIh9NhxLzeIH4BtO9xrc6
         BrdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725614274; x=1726219074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdSscxu4iwCci+/8FixpdemFIaPGSwznJT41/j2DIjA=;
        b=OnNdNklPrjVpxt1QTr29pLPn8/XWjQ5KM3FdXgAnHSX2vZH6ivIuyDNORAI8ElDuvW
         Sk7U/bnfDB6JygjtieBf5Cct7uLhnsQD5NNwxT6nRgoZIGRVQau7x4AXI5WwPv2ihQ9O
         /IwbdJmWF3om+TZ8IlYgfMmMZMIrddqT0wqmmvWnmHkcuxWFw6iDcCPRalunOQ7KGor5
         wY4sRMTdPrFCoYhA29dWDZtslnvMkJqIAfHjvHefYCIFrMmRfESQOFxVCKZ138/w44+H
         h/0ZB0bGYNPimqCJReueoIye0i37FU9B4luTFaPwse0+eZ0xWCV5dfaH+l/gNdSQy/7W
         DT/g==
X-Forwarded-Encrypted: i=1; AJvYcCU7zL4L+E18sQGkNY2pmGIQKmmsyJap67ro1ZNqGmjJ28tVkv7hPUFae66rz9ob1hMyFecpOZWQQcnVKhL1HP4=@lists.infradead.org, AJvYcCVZTSAw8c+eEWxwEFiSCqd8XCgfy6oo2109b03KGZ1pbTrOgUTTDF/09P10op9b3i9n6QlTr6BwL1pdp0Ybzf0G@lists.infradead.org
X-Gm-Message-State: AOJu0YxKegITAzhwIne6sA4o9lDV9gI9HAoX4ClIvLJWuYtd6jQv5ebb
	PqWJVB667auFOkfy7PTu/mnRXgF0SYyK64RlAfEQ+v0buXwhpvgG
X-Google-Smtp-Source: AGHT+IE3cJ9IjbyOplSMh7Z19jI3h9PoXhxcIAtQiEBq9hO7fnTUR7JHLZEdW53tyndSQR8iUyPnBw==
X-Received: by 2002:a17:902:cecd:b0:203:a0ea:63c5 with SMTP id d9443c01a7336-206f0367aa2mr16748195ad.0.1725614273729;
        Fri, 06 Sep 2024 02:17:53 -0700 (PDT)
Received: from localhost.localdomain (111-240-109-89.dynamic-ip.hinet.net. [111.240.109.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206ae90d174sm39692105ad.48.2024.09.06.02.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 02:17:53 -0700 (PDT)
From: Min-Hua Chen <minhuadotchen@gmail.com>
To: andyshrk@163.com
Cc: airlied@gmail.com,
	andy.yan@rock-chips.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	minhuadotchen@gmail.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Subject: Re:[PATCH] drm/rockchip: include rockchip_drm_drv.h
Date: Fri,  6 Sep 2024 17:17:25 +0800
Message-ID: <20240906091728.109570-1-minhuadotchen@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <6f07603.7f9.191c4c887b1.Coremail.andyshrk@163.com>
References: <6f07603.7f9.191c4c887b1.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_021754_977604_EB4934A7 
X-CRM114-Status: UNSURE (   8.73  )
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

SGksCgo+SGkgIE1pbiBIdWHvvIwKPiAgIFRoYW5rcyBmb3IgeW91ciB3b3JrCj4KPkF0IDIwMjQt
MDktMDYgMDY6Mzg6NTAsICJNaW4tSHVhIENoZW4iIDxtaW5odWFkb3RjaGVuQGdtYWlsLmNvbT4g
d3JvdGU6Cj4+SW5jbHVkZSByb2NrY2hpcF9kcm1fZHJ2LmggdG8gZml4IHRoZSBmb2xsb3cgc3Bh
cnNlIHdhcm5pbmc6Cj4+Cj4+ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJf
cmVnLmM6NTAyOjI0OiBzcGFyc2U6Cj4+d2FybmluZzogc3ltYm9sICd2b3AyX3BsYXRmb3JtX2Ry
aXZlcicgd2FzIG5vdCBkZWNsYXJlZC4KPj5TaG91bGQgaXQgYmUgc3RhdGljPwo+Pgo+Pk5vIGZ1
bmN0aW9uYWwgY2hhbmdlIGludGVuZGVkLgo+Pgo+PlNpZ25lZC1vZmYtYnk6IE1pbi1IdWEgQ2hl
biA8bWluaHVhZG90Y2hlbkBnbWFpbC5jb20+Cj4+LS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jIHwgMSArCj4+IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+Pgo+PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfdm9wMl9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3Jl
Zy5jCj4+aW5kZXggMThlZmIzZmUxYzAwLi5jNjc4ZDFiMGZkN2MgMTAwNjQ0Cj4+LS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJfcmVnLmMKPj4rKysgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYwo+PkBAIC0xNCw2ICsxNCw3IEBA
Cj4+ICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+Cj4+IAo+PiAjaW5jbHVkZSAicm9ja2NoaXBf
ZHJtX3ZvcDIuaCIKPj4rI2luY2x1ZGUgInJvY2tjaGlwX2RybV9kcnYuaCIKPj4gCj4KPldlIGFs
cmVhZHkgaGF2ZSBhIHBhdGNoWzBdIGluY2x1ZGUgcm9ja2NoaXBfZHJtX2Rydi5oIGluIHJvY2tj
aGlwX2RybV92b3AyLmgKPgo+WzBdaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0
L2xpbnV4LXJvY2tjaGlwL3BhdGNoLzIwMjQwOTA0MTIwMjM4LjM4NTY3ODItMy1hbmR5c2hya0Ax
NjMuY29tLyAKCnRoYXQncyBncmVhdCwgdGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cuCgpNaW4t
SHVhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
