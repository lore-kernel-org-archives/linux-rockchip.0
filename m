Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6D75C4828D
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2k1Z+u4eGFYJ8G69+KF5c6WIvHgRGpDGBaPXoZzrMp0=; b=DR3zLwnY2oeYDl
	YA22Wyq9xQ6DmlpjthaeArhk2HRSUzcvl6MRiJImtYP6TXsE0xs3u8pMlRrCL6m5dbtVJHS3/r0Ny
	cSEdw44yWGPF9DfVgM0Wlx5Pf/LUL2gYCDcEhyf+NEY/maKjk094Mc6NgEAsB/1eFdVvvhuVow0nP
	W9KG9dLc6JSAKLDtkLaO3nDjeuVdpC+2oVYgMnScmLoB50yXoiHldZBYinZHp1vUMdY55L3Ly6uhF
	Jm9LhAH5RWpJ8OnI+RsEHTeIHAzJ3hPnrRJOrq5OLlePiVGhCgR5i44H3UAL5zIMmZAuAfDBK0pqE
	64UOsD2OO68ZKFxcRtUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlv4-0000000BKBJ-3cQw;
	Wed, 07 Feb 2024 17:41:10 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlv1-0000000BK95-262k
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:09 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-604a184703bso1086377b3.3
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327665; x=1707932465; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=si3iSYQzW/wS10JKxA6PCTvsO4f4p9drxSnRwVUScZU=;
        b=UsY6tLCa+BQocdL7+G4kbyzg7VekZ3RwyXpYmbFqMnoZY/KbM4VnmJ61VpoyoHlk9F
         DGxQErA3Ptlm3n/IvX/c2vZ51MzCisNLsoKsU7agrXi/nK72dsxdrZEn+Chm3M/AM07J
         0VhAvRF10TIBqEJQIoqh/XamNGm1dEn7NFkIYoGpw/2+45rg8Lqafg1ov0kgYgAakzWx
         EiKUrZ505ZubgSnlbLNgFbGaxD4eSa07daPLKK9Gb0GZyYHwcxXrvoc1q9GMCisKZOHV
         KZ7ib01Zit6xP0PFgY0VXQUzEv/tRVlo6OAUORRfaFdI4eTrRv75Kfp2VLtxO3Dnj4p1
         SQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327665; x=1707932465;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=si3iSYQzW/wS10JKxA6PCTvsO4f4p9drxSnRwVUScZU=;
        b=YGnuZTQge7rbAFT8ToT2eLxw2s8LCVsc73ygrvyqvRzgrMWTtKQ2mXPIEIXB5a5DtU
         AC63JFMKDvGFxRXkDtRLl+T42w/xD5pNTWqBqIjaJA5wXTJ26ZvxvkxOy7w3uvax3ieR
         AF+vTbw2RkgKsaw5b2ratB7fiQ9nJDcwCCMvbNNk/mEl2m9CWWTGGcn6Sz0EpqDgnHGl
         d73rMHP0NF+GY0qo5juAVM2kWvTq+iJxj0JgZ2Li8AINevGgTcLWTMpf857MHV4BnZX6
         ubpqC7IPD/fiNYVPzR+cPDQPFIuqy+gbWUZaHLABvpKgYFJtnSYvlAXYzMLiQMMLdE/l
         ViIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW4xpZKAU5gdftbJW1WhkocpgLBWSKTZ3hO/0TKEnRpwd40DcJETCL1dMNNkzzMuGSNX3jRwAbfB4WsAY7uFk4Bc2WiGuDuFLtprGKhDh4sA0C
X-Gm-Message-State: AOJu0Yz6On7/aa+4ak1WQv/VKWAPfw+AtrqOfLqBKEu9i7pv0RROc9aN
	LHcUztIgprH8sxn7xKO2vIVzlRJM1pAFEu/Ce5bUQsohFSxU4b1Y0sNLMPS37L8=
X-Google-Smtp-Source: AGHT+IEEHU0Zq486UjgccXih/doHmjMJ7ii4hv+46i8KhFxxFLmJqhnzWQ3qz8k37AV1xp4vGAJu6A==
X-Received: by 2002:a0d:d641:0:b0:604:9fd4:a0ec with SMTP id y62-20020a0dd641000000b006049fd4a0ecmr668771ywd.5.1707327665531;
        Wed, 07 Feb 2024 09:41:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUkpA1e8or7NcUr/WsWjrzjdXlKnYP7Brox9OXywH4gDbvfn48o3nQvHRI3pVbQX4O+aXkOe6P1Hn3x8IUM5XVB16c5XA7JXuzZH5fDUuhC3U9N1bfEbkfjgV7/xqboIkaeaOm372F/MkZZVEq0wEc2DJuJkyXvpBTbqVylv+rD5YWo0/G+Kg3OD5182kxWb9kzCZ+UE/n0vaD+CRG2C1kuzz4SmrQ6NdqQbHPuKYn6WxVgQS1Scls5HHdhjkF410H1Jnetb2wUH9Vej4DTNp8scc0RM4g+s3dGiuedxcYwU/O4lWzNLDnUo/WA9DCIOYKmjzvnmxeBED3dOwxSJ7FMF3P7X+3ERyu7sWGAfJMo4dSW5siDWi6HZiZ5MqA9leEV73ZV1Xm1wucVQ9wsQHZulJm4UYSoAVTYaQ9clHXTJ+boA8TvSi+pQFaIkTmzILrZcCnP/v9+gZF2G3b2d2KFGmqYSgG0gGaeKeptMhY5zBZ5TXiR5vMzoVLgPLdposs2r8L4pNbOEWF0zi6izX845ny9/Y8ba709mNUr9BsTXTdpXOH32jdwZUB1rRUPT4dFPtw6nyl8BmXWI3DBiZnpBu47RgCKYnZfBSXFi2q0ZTfGpY6vkE0+pNUelxzhMwP9YImd8mz8ORz8gfk0sj2DMsm151dgQmX/uC9RcMuoN0PSwo42yRz7KspGOG5eic/E2f2nSxwgMyWgDE8l4BZ6AqGYqlwpCJ66J1Li+1ikKsc722qVzr+fdFigDGJDZehHFCM8B1EdQjx8ub/jH9/P26lDifl1VjFAc3AA4Kvvsyo6yhiOJofANrUTNPO6SqS0jzDMXufYMQZIoY+HTiBjvj6aFjyMPao63IIQYiOrKr6uAeYBxKTyEUYAz6+FQVqHMG28i+uK+/VCIFl4wemd2x3yQ34RfasOYy5M2vSNaEUDOn3DeO3cOzE+rNZYkpbwNh
 uQLZgO5OgShpDB5RC7nx4T4vJMHBLV4gdTrXKpcq5xKTKPg4L5nfJnheTA51MSe4dZHDfknxqft58Yp2qBaw3tvo3OmilhNVPPJyw5F7OKhNnu0H7PXSEV9GbfUQKNfMuv2lOfWpHHyZl+skgBoEfMVKO2/jKOJPnWm8ioObQVd6L2344T1EtRFasW0zYPwG9TQRQE+RZfpHFZr/v5NAy7nVe2HWfQmZ+TNHgtBJ8saOFbD+lqsTZ7loaKSaE51S/rACmqjiUEXw9S+tAJKyFQ8s6HaQikjgoPGoTP71vIid3a11OqK/EgMvScjkeqG0vU9tuvtXKomcd+gn/P3WY+qXKHpd9ClUllsbc/g4f39izeoO+NuBgrOyc8DAKyHdSA7OvsYgwTXHlopChDAFWRMic7m+I6ke8MGRJUTc5D9/kmWyxIE8uXkDBqWdSKuVjeQqEFojdrrbHmALXwMRaHOqgrUm+TD21Sq/eQwjWSfH+Z
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:05 -0800 (PST)
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
Subject: [PATCH v4 00/10] IOMMU memory observability
Date: Wed,  7 Feb 2024 17:40:52 +0000
Message-ID: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094107_553524_26570065 
X-CRM114-Status: GOOD (  16.12  )
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
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQp2NDoKLSBTeW5jZWQgd2l0aCB2
Ni44LXJjMyAKLSBVcGRhdGVkIGNvbW1pdCBsb2cgZm9yICJpb21tdTogYWNjb3VudCBJT01NVSBh
bGxvY2F0ZWQgbWVtb3J5IiBhcwogIHN1Z2dlc3RlZCBieSBNaWNoYWwgS291dG7DvQotIEFkZGVk
IG1vcmUgQWNrZWQtYnlzIERhdmlkIFJpZW50amVzIGFuZCBUaGllcnJ5IFJlZGluZwotIEFkZGVk
IFRlc3RlZC1ieSBCYWdhcyBTYW5qYXlhLgoKdjM6Ci0gU3luYyB3aXRoIHY2LjctcmM3Ci0gQWRk
cmVzc2VkIGNvbW1lbnRzIGZyb20gRGF2aWQgUmllbnRqZXM6IHMvcGFnZXMvcGFnZS8sIGFkZGVk
CiAgdW5saWtlbHkoKSBpbnRvIHRoZSBicmFuY2hlcywgZXhwYW5kZWQgY29tbWVudCBmb3IKICBp
b21tdV9mcmVlX3BhZ2VzX2xpc3QoKS4KLSBBZGRlZCBBY2tlZC1ieXM6IERhdmlkIFJpZW50amVz
Cgp2MjoKLSBBZGRlZCBSZXZpZXdlZC1ieSBKYW5uZSBHcnVuYXUKLSBTeW5jIHdpdGggNi43LjAt
cmMzCi0gU2VwYXJhdGVkIGZvcm0gdGhlIHNlcmllcyBwYXRjaGVzOgp2aG9zdC12ZHBhOiBhY2Nv
dW50IGlvbW11IGFsbG9jYXRpb25zCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMTEz
MDIwMDQ0Ny4yMzE5NTQzLTEtcGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbQp2ZmlvOiBhY2NvdW50
IGlvbW11IGFsbG9jYXRpb25zCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMTEzMDIw
MDkwMC4yMzIwODI5LTEtcGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbQphcyBzdWdnZXN0ZWQgYnkg
SmFzb24gR3VudGhvcnBlCi0gRml4ZWQgU1BBUkMgYnVpbGQgaXNzdWUgZGV0ZWN0ZWQgYnkga2Vy
bmVsIHRlc3Qgcm9ib3QKLSBEcm9wIHRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBhcyB0aGV5IGRvIGFj
Y291bnQgaW9tbXUgcGFnZSB0YWJsZXM6CmlvbW11L2RtYTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBm
dW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCmlvbW11L2ZzbDogdXNlIHBhZ2UgYWxs
b2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCmlvbW11L2lvbW11ZmQ6
IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24gcHJvdmlkZWQgYnkgaW9tbXUtcGFnZXMuaAph
cyBzdWdnZXN0ZWQgYnkgUm9iaW4gTXVycGh5LiBUaGVzZSBwYXRjaGVzIGFyZSBub3QgcmVsYXRl
ZCB0byBJT01NVQpwYWdlIHRhYmxlcy4gV2UgbWlnaHQgbmVlZCB0byBkbyBhIHNlcGFyYXRlIHdv
cmsgdG8gc3VwcG9ydCBETUEKb2JzZXJ2YWJpbGl0eS4KLSBSZW1vdmUgc3VwcG9ydCBpb21tdS9p
by1wZ3RhYmxlLWFybS12N3MgYXMgdGhlIDJuZCBsZXZlbCBwYWdlcyBhcmUKdW5kZXIgYSBwYWdl
IHNpemUsIHRoYW5rcyBSb2JpbiBNdXJwaHkgZm9yIHBvaW50aW5nIHRoaXMgb3V0LgoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpEZXNjcmlwdGlvbgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCklPTU1VIHN1YnN5c3RlbSBtYXkgY29u
dGFpbiBzdGF0ZSB0aGF0IGlzIGluIGdpZ2FieXRlcy4gTWFqb3JpdHkgb2YgdGhhdApzdGF0ZSBp
cyBpb21tdSBwYWdlIHRhYmxlcy4gWWV0LCB0aGVyZSBpcyBjdXJyZW50bHksIG5vIHdheSB0byBv
YnNlcnZlCmhvdyBtdWNoIG1lbW9yeSBpcyBhY3R1YWxseSB1c2VkIGJ5IHRoZSBpb21tdSBzdWJz
eXN0ZW0uCgpUaGlzIHBhdGNoIHNlcmllcyBzb2x2ZXMgdGhpcyBwcm9ibGVtIGJ5IGFkZGluZyBi
b3RoIG9ic2VydmFiaWxpdHkgdG8KYWxsIHBhZ2VzIHRoYXQgYXJlIGFsbG9jYXRlZCBieSBJT01N
VSwgYW5kIGFsc28gYWNjb3VudGFiaWxpdHksIHNvCmFkbWlucyBjYW4gbGltaXQgdGhlIGFtb3Vu
dCBpZiB2aWEgY2dyb3Vwcy4KClRoZSBzeXN0ZW0td2lkZSBvYnNlcnZhYmlsaXR5IGlzIHVzaW5n
IC9wcm9jL21lbWluZm86ClNlY1BhZ2VUYWJsZXM6ICAgIDQzODE3NiBrQgoKQ29udGFpbnMgSU9N
TVUgYW5kIEtWTSBtZW1vcnkuCgpQZXItbm9kZSBvYnNlcnZhYmlsaXR5Ogovc3lzL2RldmljZXMv
c3lzdGVtL25vZGUvbm9kZU4vbWVtaW5mbwpOb2RlIE4gU2VjUGFnZVRhYmxlczogICAgNDIyMjA0
IGtCCgpDb250YWlucyBJT01NVSBhbmQgS1ZNIG1lbW9yeSBpbiB0aGUgZ2l2ZW4gTlVNQSBub2Rl
LgoKUGVyLW5vZGUgSU9NTVUgb25seSBvYnNlcnZhYmlsaXR5Ogovc3lzL2RldmljZXMvc3lzdGVt
L25vZGUvbm9kZU4vdm1zdGF0Cm5yX2lvbW11X3BhZ2VzIDEwNTU1NQoKQ29udGFpbnMgbnVtYmVy
IG9mIHBhZ2VzIElPTU1VIGFsbG9jYXRlZCBpbiB0aGUgZ2l2ZW4gbm9kZS4KCkFjY291bnRhYmls
aXR5OiB1c2luZyBzZWNfcGFnZXRhYmxlcyBjZ3JvdXAtdjIgbWVtb3J5LnN0YXQgZW50cnkuCgpX
aXRoIHRoZSBjaGFuZ2UsIGlvdmFfc3RyZXNzWzFdIHN0b3BzIGFzIGxpbWl0IGlzIHJlYWNoZWQ6
CgokIC4vaW92YV9zdHJlc3MKaW92YSBzcGFjZTogICAgIDBUICAgICAgZnJlZSBtZW1vcnk6ICAg
NDk3Rwppb3ZhIHNwYWNlOiAgICAgMVQgICAgICBmcmVlIG1lbW9yeTogICA0OTVHCmlvdmEgc3Bh
Y2U6ICAgICAyVCAgICAgIGZyZWUgbWVtb3J5OiAgIDQ5M0cKaW92YSBzcGFjZTogICAgIDNUICAg
ICAgZnJlZSBtZW1vcnk6ICAgNDkxRwoKc3RvcHMgYXMgbGltaXQgaXMgcmVhY2hlZC4KClRoaXMg
c2VyaWVzIGVuY29ycG9yYXRlcyBzdWdnZXN0aW9ucyB0aGF0IGNhbWUgZnJvbSB0aGUgZGlzY3Vz
c2lvbgphdCBMUEMgWzJdLgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClsxXSBodHRwczovL2dpdGh1Yi5jb20vc29s
ZWVuL2lvdmFfc3RyZXNzClsyXSBodHRwczovL2xwYy5ldmVudHMvZXZlbnQvMTcvY29udHJpYnV0
aW9ucy8xNDY2Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KUHJldmlvdXMgdmVyc2lvbnMKdjE6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDIzMTEyODIwNDkzOC4xNDUzNTgzLTEtcGFzaGEudGF0YXNoaW5A
c29sZWVuLmNvbQp2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW0vMjAyMzExMzAy
MDE1MDQuMjMyMjM1NS0xLXBhc2hhLnRhdGFzaGluQHNvbGVlbi5jb20KdjM6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDIzMTIyNjIwMDIwNS41NjI1NjUtMS1wYXNoYS50YXRhc2hpbkBz
b2xlZW4uY29tCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KClBhc2hhIFRhdGFzaGluICgxMCk6CiAgaW9tbXUvdnQt
ZDogYWRkIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBwYWdlIGFsbG9jYXRpb25zCiAgaW9tbXUvYW1k
OiB1c2UgcGFnZSBhbGxvY2F0aW9uIGZ1bmN0aW9uIHByb3ZpZGVkIGJ5IGlvbW11LXBhZ2VzLmgK
ICBpb21tdS9pby1wZ3RhYmxlLWFybTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92
aWRlZCBieQogICAgaW9tbXUtcGFnZXMuaAogIGlvbW11L2lvLXBndGFibGUtZGFydDogdXNlIHBh
Z2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieQogICAgaW9tbXUtcGFnZXMuaAogIGlv
bW11L2V4eW5vczogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21t
dS1wYWdlcy5oCiAgaW9tbXUvcm9ja2NoaXA6IHVzZSBwYWdlIGFsbG9jYXRpb24gZnVuY3Rpb24g
cHJvdmlkZWQgYnkgaW9tbXUtcGFnZXMuaAogIGlvbW11L3N1bjUwaTogdXNlIHBhZ2UgYWxsb2Nh
dGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieSBpb21tdS1wYWdlcy5oCiAgaW9tbXUvdGVncmEtc21t
dTogdXNlIHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbiBwcm92aWRlZCBieQogICAgaW9tbXUtcGFn
ZXMuaAogIGlvbW11OiBvYnNlcnZhYmlsaXR5IG9mIHRoZSBJT01NVSBhbGxvY2F0aW9ucwogIGlv
bW11OiBhY2NvdW50IElPTU1VIGFsbG9jYXRlZCBtZW1vcnkKCiBEb2N1bWVudGF0aW9uL2FkbWlu
LWd1aWRlL2Nncm91cC12Mi5yc3QgfCAgIDIgKy0KIERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMv
cHJvYy5yc3QgICAgICB8ICAgNCArLQogZHJpdmVycy9pb21tdS9hbWQvYW1kX2lvbW11LmggICAg
ICAgICAgIHwgICA4IC0KIGRyaXZlcnMvaW9tbXUvYW1kL2luaXQuYyAgICAgICAgICAgICAgICB8
ICA5MSArKysrKy0tLS0KIGRyaXZlcnMvaW9tbXUvYW1kL2lvX3BndGFibGUuYyAgICAgICAgICB8
ICAxMyArLQogZHJpdmVycy9pb21tdS9hbWQvaW9fcGd0YWJsZV92Mi5jICAgICAgIHwgIDIwICst
CiBkcml2ZXJzL2lvbW11L2FtZC9pb21tdS5jICAgICAgICAgICAgICAgfCAgMTMgKy0KIGRyaXZl
cnMvaW9tbXUvZXh5bm9zLWlvbW11LmMgICAgICAgICAgICB8ICAxNCArLQogZHJpdmVycy9pb21t
dS9pbnRlbC9kbWFyLmMgICAgICAgICAgICAgIHwgIDEwICstCiBkcml2ZXJzL2lvbW11L2ludGVs
L2lvbW11LmMgICAgICAgICAgICAgfCAgNDcgKystLS0KIGRyaXZlcnMvaW9tbXUvaW50ZWwvaW9t
bXUuaCAgICAgICAgICAgICB8ICAgMiAtCiBkcml2ZXJzL2lvbW11L2ludGVsL2lycV9yZW1hcHBp
bmcuYyAgICAgfCAgMTAgKy0KIGRyaXZlcnMvaW9tbXUvaW50ZWwvcGFzaWQuYyAgICAgICAgICAg
ICB8ICAxMiArLQogZHJpdmVycy9pb21tdS9pbnRlbC9zdm0uYyAgICAgICAgICAgICAgIHwgICA3
ICstCiBkcml2ZXJzL2lvbW11L2lvLXBndGFibGUtYXJtLmMgICAgICAgICAgfCAgMTUgKy0KIGRy
aXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1kYXJ0LmMgICAgICAgICB8ICAzNyArKy0tCiBkcml2ZXJz
L2lvbW11L2lvbW11LXBhZ2VzLmggICAgICAgICAgICAgfCAyMzYgKysrKysrKysrKysrKysrKysr
KysrKysrCiBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgICAgICAgICAgfCAgMTQgKy0K
IGRyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11LmMgICAgICAgICAgICB8ICAgNyArLQogZHJpdmVy
cy9pb21tdS90ZWdyYS1zbW11LmMgICAgICAgICAgICAgIHwgIDE4ICstCiBpbmNsdWRlL2xpbnV4
L21tem9uZS5oICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KIG1tL3Ztc3RhdC5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMyArCiAyMiBmaWxlcyBjaGFuZ2VkLCAzOTcgaW5zZXJ0
aW9ucygrKSwgMTkxIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvaW9t
bXUvaW9tbXUtcGFnZXMuaAoKLS0gCjIuNDMuMC41OTQuZ2Q5Y2Y0ZTIyN2QtZ29vZwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
