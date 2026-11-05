Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44692606A326
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 18:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uniL8flZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=PJG96eK8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=olvFEh20zQeV/h/8ztB5al5EoMbTeaADvTJVdE9z+2E=; b=uniL8flZUq/X/wX8jtc0m2D24Q
	S+J4UT+n2kXTJ5BKQuxfuPa7aTLPkyfvgxhRdwdWofWp1PyXlrqJeCagg4dqfms7KFhXbFAOWaPkL
	pWjF1ri7+TLUheLdzq4+Vflrh5HNEn2OfAXMZ+gypSC7xpo+l1AAtSQ2wt9UjNwsEfsUwIT8HDfpq
	PFJusRniD5WyyA7UPA4j1OG1AyFIlmykiQ1dYTFVIgO5SHJTVgBbFAUlJMSH+b4eCg5cE4SGaasBw
	IQNxFV1D1TKEUVhx8KsYnZASLhWSja8trZSpMwFjchoAIxvA20uHjWCuEGVUGuh8iqvc7xRZ/gGyU
	jiwv1bLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP21F-0000000A6p8-0Fjf;
	Thu, 05 Nov 2026 18:17:01 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP20y-0000000A6m3-3gUu
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 18:16:58 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-8a06210b29fso1212047b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 10:16:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793902604; cv=none;
        d=google.com; s=arc-20260327;
        b=eR620OD1WRqhLPZMRHbYwiYYF6qff7Z1bC9a1D1+474L8J5LcJwKkcAXLjqrKZYHnF
         epS9vCuglup8PbjIbmVQbW+wrhww2jqm+mlcTcitIm0zykBeTdyhN29lCnrTuZUZMDCX
         eAouLtqehMqg6L2gCE1O/68Z765m4DQ1gtJJ5rEl2X7zV1Qhn35sY+ZFYa7Xv3jaIMVu
         MAy57FG5u5472WwXpx2vVv4+QM8csCPzEy4/u/oIFTJxxwi01aCj/xrsam2eHx3ZK3rR
         9jhOlH1R9k2r9JXXOwk5t6dZ26BAhB8+c6T0lKfoJrJge6oGpkHdNABDhw8STSavz5IV
         4ZNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FRuHktTDVKwo5RvXXcGGk8C8OZkIyyUELpQy8s7GxcI=;
        fh=ggyCxh0BUhucd3Huh4C1JYsqLyJ8lZ6JrNZ5tZC5u6U=;
        b=gU2bL5INKGMOzrsSIPx3JXdz8W5gl5LXhVy2PmHci+ELhVe7vtonYSnqa/pZ/HVTZa
         b92b1OUxnFqqr+s2rDqm9G9cBmxHNHA2pDLMN6qc0o41nJRO1JYXVfC5Fnsf7zXAOQHi
         l3PFrMP+j1OPG4Ui2svajTaVz21OT1Bx5d3+N5cFVLT8Pr8joUt7VXuz6+KJP4h4KKSq
         cJJCUgt6GPVpw9MsSc8twBNoDBx9B04wgUhGU7BV41bu+dIZ8icstSwB8Z9mX2UeVkk2
         gGIeNfALbGXF4ayHQLXO1ovxFO+ppVNFlsvGpQok3BMiJ4ZPO833unYNNH40lK0u5CwV
         158Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793902604; x=1794507404; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FRuHktTDVKwo5RvXXcGGk8C8OZkIyyUELpQy8s7GxcI=;
        b=PJG96eK8s61N26j4dJE3rWFyzgZSADmhmYFNYVq0t8fopFAZoRy2fg1V2lWuRzon/Q
         0SK8UoGPxfsSs47qcf7jAjF+3A1jwnFSnm2ulWk6hdMpIiRyIHoseJcC3Cf5pcGyr8V5
         za7z1/H+qG3htL+nGqdfXPLlRfpQT0OebM0Vj6zT+4WtCxDh26BPMmTH5aJll/RNPu5l
         OFjkwjF+KqmYhH9ilVu9t+vrR4x7MQBVQar6BH6Tgshz+T/Fw5wU2IsceFZhhuK9bucq
         6Ql2OyFpqU15lKQ3jhafBWKjySzcDOWIbMEDXMuUYjPpFwWVCgT+VOzOjO/xrqx5rUiP
         IUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793902604; x=1794507404;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FRuHktTDVKwo5RvXXcGGk8C8OZkIyyUELpQy8s7GxcI=;
        b=GL5MyC19WUcwXhhmrEAaJ/Aw8IKbR9K4LxMmtr6EskOQ4qjTf1+x3uB/z7zmtDBN7E
         7xMNIiA+6E1IFTJRQbwq79P+bvABFPgoVFVlPSVTodMcIFMORen60hnkwntLSxcj1rlo
         y6YeoA0I6mZ0tm17sQX/SrCyYw3SNRZK9NWE657LKjN5JbULiFq9wPJc/SsMaS6C4xXk
         0fsB3mbJKi9tMv8VX/v9W3ATA4lMDF8kOEpzOeFTszXePeVii3/nxNU06TWdFVFTUFAq
         BmvkpUYW3xei/87JLMySPiOpptdQ77wl3Zh2OkQLGT2ngtYzOOWsvTCe771M4Mr0Gw0J
         TFKg==
X-Forwarded-Encrypted: i=1; AKwUvBzU3SI4/RwrymX8X9IfoCcMpK0dqoeil2zNKkYJ5qDOA/znYlfTDkGCRnug1DFd2rKLyRDPAfSpgASho7UmDQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9tMHv4nkmqkpmL3nyLJHN8zhhlzpQdccIqZV5OzCHQ7q9A1pfn
	fs3aACNcexcMP16cwaDtZRqmHqoDtf8prXUq2BnhtuQBziIJEh9X1XRjKn4TCuN9ils14925sTg
	USYxc4tStKaM9zuY3q5DeGhZvjTSTRewKzBny2M8Bxex96M3DrSpjfXZ+LA==
X-Gm-Gg: AYBFou30pvAv+aCHpm3TRGIU8WzvUXEYJ2+44ERUoS91ix/k+94x+stOoEusQuYzEio
	3oIKDjsOhlWYkvoxoOFIisxCXCsHZS00RCyAjMU9b+R/+AcxHxCrYJ5BUgLXJ0MP3iZGfVE+Dy/
	3B5VmJGuEhfrj3oGAIIpPyq+lE2M+QifZTzzsF0SccDeNmgMA7ZVAC+L4aTgYsjmAXdR3PJCKaN
	OAwUyouNec4529d4fWMgf3B1TLlr9qkdoj2wLZKSn67LhDwhwF41eyFXcGcZNSguj1QPFr3dZsl
	Y9/S6IwXxy+dZi7zwKNKGTWDkJ5eq7lXdlzoP1ObfpL0Zqlv7TvqXS8pneHAhmqzXW6a2V//oxB
	LoRTfpJQpuDIHTr5ZOKFsBxCsCzQYUzBqYleU
X-Received: by 2002:a05:6a00:2e10:b0:89f:600b:610d with SMTP id
 d2e1a72fcca58-8a9bf3371bemr17651793b3a.31.1793902603859; Thu, 05 Nov 2026
 10:16:43 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261030-panfrost-rk3399-pm-rt-v1-1-e94437159a9d@iav.lv> <autNWETrwrHbD2H9@sobremesa>
In-Reply-To: <autNWETrwrHbD2H9@sobremesa>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 18:16:32 +0000
X-Gm-Features: AclHuK89M2SkDj4GupZYw3Cx5gF7O7bIl48XC-kBSDLQ8-C12o5Bi1k93zrIM-g
Message-ID: <CAPj87rMoGhN6yew4tcGeTjrG87685f2cdrmkHFZ91CwfgXx0fQ@mail.gmail.com>
Subject: Re: [PATCH] drm/panfrost: Gate the RK3399 GPU clock in runtime suspend
To: =?UTF-8?Q?Adri=C3=A1n_Larumbe?= <adrian.larumbe@collabora.com>
Cc: iav@iav.lv, Boris Brezillon <boris.brezillon@collabora.com>, 
	Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_101648_411936_2904EA26 
X-CRM114-Status: GOOD (  11.87  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpPbiBXZWQsIDQgTm92IDIwMjYgYXQgMTU6NDAsIEFkcmnDoW4gTGFydW1iZQo8YWRyaWFu
LmxhcnVtYmVAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gT24gMzAuMTAuMjAyNiAwNjo0MywgSWdv
ciBWZWxrb3YgdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gQEAgLTk4Myw2ICs5ODMsNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBkdF9tYXRjaFtdID0gewo+ID4gICAgICAgICAu
ZGF0YSA9ICZhbWxvZ2ljX2RhdGEsIH0sCj4gPiAgICAgICB7IC5jb21wYXRpYmxlID0gInJlbmVz
YXMscjlhMDhnMDQ2LW1hbGkiLCAuZGF0YSA9ICZkZWZhdWx0X3BtX3J0X2RhdGEgfSwKPiA+ICAg
ICAgIHsgLmNvbXBhdGlibGUgPSAicmVuZXNhcyxyOWEwOWcwNDctbWFsaSIsIC5kYXRhID0gJmRl
ZmF1bHRfcG1fcnRfZGF0YSB9LAo+ID4gKyAgICAgeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azMzOTktbWFsaSIsIC5kYXRhID0gJmRlZmF1bHRfcG1fcnRfZGF0YSB9LAo+Cj4gWW91J3JlIGVm
ZmVjdGl2ZWx5IGFkZGluZyBzdXBwb3J0IHRvIGEgd2hvbGUgbmV3IFNvQy4gVGhpcyBtYWRlIG1l
Cj4gd29uZGVyLCBhcmUgd2Ugc3VyZSBzdXNwZW5zaW9uIHJlc3VtcHRpb24gbm90IHdvcmtpbmcg
aXMgb25seSBiZWNhdXNlIG9mCj4gR1BVX1BNX1JUPyBTaG91bGRuJ3Qgd2Uga25vdyBmaXJzdCBh
Ym91dCBpdHMgc3VwcGxpZXMgYW5kIHBvd2VyIGRvbWFpbnMsCj4gYW5kIGFueSBwb3RlbnRpYWwg
R1BVIHF1aXJrcz8gSSB0aGluayB0aGlzIGdvZXMgYmV5b25kIG15IGtub3dsZWRnZSwgc28KPiBt
YXliZSBTdGV2ZW4gUHJpY2UgY2FuIHBpdGNoIGluLgoKUkszMzk5IGlzIGFuIGV4dHJlbWVseSBr
bm93biBTb0MuIEl0IHdhcyB0aGUgZmxhZ3NoaXAgZm9yIFBhbmZyb3N0CmRldmVsb3BtZW50IGZv
ciBxdWl0ZSBhIHdoaWxlLCBoYXMgcmVhbGx5IHdpZGUgY29tbXVuaXR5IHVzYWdlLCBhbmQKcXVp
dGUgYSBmZXcgcHJvZHVjdHMgc2hpcHBlZCBvbiBpdC4gSSB0aGluayBkb2luZyBydW50aW1lIFBN
IG9uIFJLMzM5OQpzaG91bGQgYmUgYWJzb2x1dGVseSBmaW5lLgoKQ2hlZXJzLApEYW5pZWwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
