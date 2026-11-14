Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C44606A332
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 12:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Mnu43vd6;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=furiosa.ai header.i=@furiosa.ai header.a=rsa-sha256 header.s=google header.b=L4zuBYhl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5iluhuheh9Fqb8WUP/91ITS4K609Un7TLo0pBlsbfZQ=; b=Mnu43vd6hKBOhbri/d+8pLTtqX
	GOPSO2EYFYEGKiRDSMhDz7rnKTlZZLX+DgGLq/inyG/BHVrluWQrP1WN1/sQIEMaEsV/OItBKNdFJ
	kFjFmzAJ2aHJt+ExvFhJqrEqR7szkroo56VWvbXb9X9sbzwDb6Iy7mj8V5kQS32SgI2ACOjN96SJS
	oXcNKoLvNX95O8s2GWY6IPQnqXKw/Uh6bQSSZKb39xro7gVlcnV4mM4odlV52zwGuUESwYx94ryfS
	Fzv72QuVTh8Bun95ggLC4Jj7bHHbgvPM0XUKYnsPseNeVUsb54Ef/nnd0AJUG/uucxmAls/zxr8So
	aVEVhM8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSDHl-0000000G227-0WAF;
	Sat, 14 Nov 2026 12:55:13 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSDHi-0000000G213-1Deh
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 12:55:11 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-36fc0a3fe93so3572293eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 04:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1794660909; x=1795265709; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RIAjwWAB/1kSNYGnZwFAsdhypWK0Kwmt4wTEOFin5Vs=;
        b=L4zuBYhlD0hEFU4y2zOo/g+fcpnX5WTk/qb2wkd68D55kq1DWt5NHRDMDXwCPMgkC6
         +MevVR88VsHDUNYrJgjhXCBerWqs/CfFhABwp1RePct6LyYC/tZjLvFLpKfcnmBj0tsA
         Pnv51274FZJo3b+Ai5hwAiF5Qf9+6R7EDNKt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794660909; x=1795265709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RIAjwWAB/1kSNYGnZwFAsdhypWK0Kwmt4wTEOFin5Vs=;
        b=oxlxnDzHVLDrzJCYTiY8adrCF/X8MGnznPf9gB2eBId8Y02WtAlF0s4FrlEq1PkQl/
         iTnEU9g4SH4OcXE+fvKWcNR+kSUldU2EkIBqZzLZnz/cnnbOXufMRuAUQJUyjI2z4BHg
         TurT/4ZT2Roo64E0BVdHXo/+nsqzZIcDRtsH+OgU9Mqp7q16mpTEkKT3ZKlBeEDpAAkc
         3Dfko8saL+o3/rPXzxfSSfrlp4sDAr73ULbfLSKJdsZsyiXlSDq4bDcwVB7vYtBAkY0A
         MraHPG6W8YxEy1dKiC8W8998LhpPhs8qsMSRdm2LYfgSta6rkTlkOmSkmcrc+gHSdAUo
         TBZg==
X-Forwarded-Encrypted: i=1; AL+hErEFAk8BgBnYb+gFgNgZ/+VfTIZHvRJijw4ReeTe7eZkx7Q+P3AG+M7lS67asFvVA5XibFFsd+nMPge2kyyrxw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/MXTOULN94wp/Ziqy6EKVfRCceOfu5in2m/O4piAnp9YX0Tll+
	TlUkDZ8x9Ivuj78gp/yxjl/S1iK77JXAvTj6fB27DfkqhlBFC1OxQ48FLm78L7Ne57w=
X-Gm-Gg: AYBFou0OPxYv2YI+EOUIGdo/1ywJJwdrGArCQyp/vW0rrj8kyB2Ht1npH4bzlXCWXCB
	GST1v/Xo938i9MuckqqlqQAl8ZM7AGLJsuxXqGg+0GnOBMRanlhWFCQ9rq9tmVn1lM2+KzHUMCL
	ZGeqol34wUh0a/gQKLAIvee6CCoKUn391iTrBco//+5kRi+v5KJIc5l01QxUwGQZF133w4UexUg
	5J1kanRnXZWYOES+QJhoHgRDXRBfJp83N51vj5LUtkMYTNwAWcwt6+PE/xrYoUgTnrQ4YTYuNfa
	V/TOQOgX4QH/qlGUD1dwzZa05H13BPQbM8vKKTJ6mLSnD7XmskzzM/xEcCIpWwLFCvtLmhjLYtu
	fVdzMAY9B1WNfzH4tlir2BOIsZJzORWsDWKvGFvO8GpbAneJNmQBV6kJBAq6ECoJaTEi7UE21kB
	qthbmtH+/sp+xfBlmA8TPhO2tGSw3Zkfcv8w6vcq3kIrMbOTFhSyAtVBqGuGB5cPihI95z0QQ8j
	0bY6Oogim0vMfBcAN3qcwpGfJwfQJZp6YbKG0bKvxaH13W/Zj0fQSWOjALlPWUJRIcZy1m8JPK1
	2Znn/K45p2eLaU7u0al+G909HJkRKAxVATmi4uPsCNYgG8S7VmgY3ot+VJdFTHgIHKrWkkkG4Hh
	42tsV2bqJCHWX
X-Received: by 2002:a05:7301:1528:b0:369:1401:c5c2 with SMTP id 5a478bee46e88-37966d4077dmr4508914eec.26.1794660909271;
        Sat, 14 Nov 2026 04:55:09 -0800 (PST)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3797f98b9b2sm15904809eec.6.2026.11.14.04.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 04:55:08 -0800 (PST)
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: ulf.hansson@oss.qualcomm.com,
	ulfh@kernel.org,
	heiko@sntech.de,
	finley.xiao@rock-chips.com,
	shawn.lin@rock-chips.com,
	sebastian.reichel@collabora.com,
	vlwwwwww@gmail.com,
	leonard@lausen.nl,
	abel.vesa@oss.qualcomm.com,
	tomeu@tomeuvizoso.net,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v17 1/3] pmdomain: rockchip: switch off the subdomains of a regulator domain at probe
Date: Sat, 14 Nov 2026 21:54:53 +0900
Message-ID: <20261114125459.10030-1-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <733b921576828ca70a3f5048691400130f8a5dbc.1794615323.git.gahing@gahingwoo.com>
References: <cover.1794615323.git.gahing@gahingwoo.com> <733b921576828ca70a3f5048691400130f8a5dbc.1794615323.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_045510_322738_FE97EF38 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sat, Nov 14, 2026 at 04:04:59PM +1300, Jiaxing Hu wrote:
> Mark a regulator domain and every domain below it as off when it is
> added, and once the subtree is complete, switch it off from the leaves
> up. If a subdomain fails to switch off, leave its parents on and warn.

This also changes probe on RK3588, where npu, gpu and vcodec are
regulator domains, so I booted it on a ROCK 5B+ (backported to 7.2).
It boots as before: the NPU and GPU work, the video codecs probe, and
there are no new warnings.

Tested-by: Sidong Yang <sidong.yang@furiosa.ai> # RK3588, ROCK 5B+

Thanks,
Sidong

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
