Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17FA9C19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 12:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvNPpb8cvnyS2C9joFST6WthuQ+9CTlbxzQQBR842b8=; b=Ri5EYijj1XuRTo
	nnTcSAs0fr25L1RfRD6RY5S0AuSTyH/xrjY2T9dGuLhEH8IkfhkwbWm8veeSK644vZZzauM9qhE9j
	HBJ/jeenag4z2iE7rKAvtGsuodpAo+USZpGCCNXvmBxfO8eliQI+1Y9zfxrtYu4Ot5o8Xg5SOEsFt
	bsbehsH3Mqb4POm7GDvL+fXsek5ztexhR/cIU3/SUI46l51MaJCEEXkckINENIPKmMpanSXLRyGci
	2Xsm2iViE/AhhIWeHrHEvihxYmTz5c0ak0Ishrpdcm5Si4drJt/680v+G6tvIlptz3M9akNoyklMG
	Mbbmf1V/YQeBKfGeX/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzHc-0000000As7U-1ChB;
	Fri, 28 Feb 2025 12:16:00 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzH2-0000000Arzm-0zD6
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 12:15:25 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-6f4434b5305so18091937b3.3
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 04:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740744923; x=1741349723; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jUNIrARAbtbTs0tlrP0Tn9FLBSgxnIB4tXATcm2ewZk=;
        b=trzMBSvdefQH+YTHFVdlFSmWosCKqrW+wIrAsOmXrlbVgjRv0z4+7dujofxS7OLJDC
         +3vFNE/r3w0hN+W2Vs8SA6UAi/yghRvqs7O44YVNOVXXfarUT+x3yabQtnuyqnWY07Ug
         xKN+VX6/BvvD4EdUh1Ov/g2qryP2xe7xmgmP9qrrBF4ON5g5AqNfIUm2+t5hyO4PEgr+
         CP1BsyDe5CyiQqZFFZFZHEJW+V0uACiUmUUHJwc1JUipdyCmQCUoWIAXTFEITLOCDMjs
         u1f8uMpv62amMf28U00Hp4fL1ScEr5H/6QVc6dFn5TbJhNG9A6qUoFBFnO5Rw+rK/25r
         QlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740744923; x=1741349723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUNIrARAbtbTs0tlrP0Tn9FLBSgxnIB4tXATcm2ewZk=;
        b=IJq4h+ya3JxQ2LBv6BqhitUiHLnhKlomKaHqOJyJV2iliIKYvXPntJHgyRSXTJCT0O
         OTC/63N/infOk7polODR+FttXUwST3XkS/TgBRWkLPJ2QLdCxmtlGP3qWWhiAcMmG6TP
         jdL31b9RKBxTuSQel+FzXwATSlLyAlv4/F4vsNPe19eDBxFN8kRL1WoYj6iciKIRuNiT
         BeotB3QBbovmwpVOk12y9IOXdnOuBziHzpR5cC3VqK7RfNhfyTVnC3kmpZ9AQ/20O7TF
         zPKfO9RHYREaCUfQRKkSGpAeSIquiugUeARmS6znShHbxT0wL5oJVoah7g0d3hHbQlSV
         n96Q==
X-Forwarded-Encrypted: i=1; AJvYcCXQ0uQmLzoirzd9tVeh+iigtfHc1f6BMR4s5ZyARgXD7lqV3aR9iJi1+5GJ+VMqPD3bGZ+pVdsza2cx6dgRTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxB4O5VDL4403bE6DspPhvGYtfwksMTl+bNKx5PK6rAECPQZCjC
	NZHNSqgDCnJtv1nVw8QYE+KZIe/qPdmEnWXJZ1yYaaZE7meK49HYpX9cBROvURZ4n2gPOLIx55k
	NxXTq0yfp0diUjwVwUgjBn2yCFbRWoocfBHohLQ==
X-Gm-Gg: ASbGncs/V/hIInkBAaIUhRAVgGGyRixi+VKCXfgO05/wfLUGboMyIHWe90twUoFKBYn
	dyhAMMdAMnc58xvdF7ecpUS60xTZOYfNnHJp9zJQEn1rZLuyHHcRcuPAr4cbtd9MrZk7x5ea8J/
	cBo9dhosBl
X-Google-Smtp-Source: AGHT+IHT7obeRQVC5jfTWOVMXwZbo8MvDy1vz1fLAzz3uGYU/jwe30ZeBEtELX2ss/DGYLXh7XY0o+RqytL8ARTZDYA=
X-Received: by 2002:a05:690c:4a0e:b0:6fb:1c5a:80fc with SMTP id
 00721157ae682-6fd4a0c405amr41901307b3.26.1740744923010; Fri, 28 Feb 2025
 04:15:23 -0800 (PST)
MIME-Version: 1.0
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 28 Feb 2025 13:14:47 +0100
X-Gm-Features: AQ5f1JrDK1Y4U3HrAxZBGp7DwLtxTGI5xNt7avBzml29SRZW6KdhhTSUIQ_s8IE
Message-ID: <CAPDyKFpQaX8nUt_OQ-hwB+zYqWVCLKci2BmhrBOYUTcrkOMv9g@mail.gmail.com>
Subject: Re: [PATCH v6 0/8] Fix RK3588 power domain problems
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Peter Geis <pgwipeout@gmail.com>, 
	Tomeu Vizoso <tomeu@tomeuvizoso.net>, Vignesh Raman <vignesh.raman@collabora.com>, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_041524_277957_A9D5EE5F 
X-CRM114-Status: GOOD (  23.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 20 Feb 2025 at 19:58, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
>
> This series first does some cleanups in the Rockchip power domain
> driver and changes the driver, so that it no longer tries to continue
> when it fails to enable a domain. This gets rid of the SError interrupt
> and long backtraces. But the kernel still hangs when it fails to enable
> a power domain. I have not done further analysis to check if that can
> be avoided.
>
> Last but not least this provides a fix for the GPU power domain failing
> to get enabled - after some testing from my side it seems to require the
> GPU voltage supply to be enabled.
>
> This introduces devm_of_regulator_get without the _optional suffix, since
> that is more sensible for the Rockchip usecase. Longer explanation can be
> seen in patch 6, which adds the handling to the Rockchip driver. My merge
> suggestion would be that Mark provides an immutable branch to Ulf.
>
> The last patch, which updates the RK3588 board files should cover all RK3588
> boards that are currently in Heiko's for-next branch. Any board missing the
> update will behave as before, so it is perfectly fine not to update all DT
> files at once (in case I missed any).
>
> This is based on Heiko's for-next branch. Also it's probably worth mentioning,
> that mesa CI is carrying this patchset for quite some time now.

[...]

I have pulled patch 1 from Mark's tree and applied patch 2 -> patch 7 for next.

Note that, patch6 (the DT patch) is also available on the immutable dt branch.

Thanks and kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
