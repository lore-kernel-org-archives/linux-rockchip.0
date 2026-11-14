Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0297A606A327
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 12:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WbqkqEkR;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=furiosa.ai header.i=@furiosa.ai header.a=rsa-sha256 header.s=google header.b=MeBx7NZq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a9b5xQIbRAkUTSCgwQ+6s888tKi0CeaSBpOrfzsA2T8=; b=WbqkqEkRx4qjcTXhT5IaFBuSxs
	h5hINMefbT6aszaqaNo2bw5D8YZwvJUaarjeHhgHKbqtmR9olKT69iuO+FOSdWOXtl0kKjWMfvHPX
	6waQIqbxZb0gwoxRZ6sYg0z9ZV2TxXzZTB4vz3NCY6pwRSz6BrJ32qBVyN4NfuKr+sCKNHQmVBKnr
	TMTj+x9nPG63eoNoHdYMJz1eJNcOYrF4o1oYGJlzk8va3e1MmZEuVLWPIHjeoRtctFhKyoOfMQ90U
	hYVvqntBCRhEOaYs4uKuYjuZljul0vv/XDR8oR7HMLlTEEkDywrC9H2w2N+Hhw8+QK0fiiid7HO6u
	+USrI7jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSDHO-0000000G1w2-3WbY;
	Sat, 14 Nov 2026 12:54:50 +0000
Received: from mail-dl1-x1234.google.com ([2607:f8b0:4864:20::1234])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSDHM-0000000G1vJ-0hLq
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 12:54:49 +0000
Received: by mail-dl1-x1234.google.com with SMTP id a92af1059eb24-1a8cc11ac42so1756512c88.0
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 04:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1794660887; x=1795265687; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kzZ572SYqNYS7AFbKEhSpyO0POmges/XmCJlcN/iV2Y=;
        b=MeBx7NZqmIuTjbuJIgU+sE2VXLTB+42zV860m0otEGWxBvRup/X5O2wmegTS/SMepx
         ox8hsG+uT6BJVYkJRKfEE1HZCR8W5BUVYZomuuVAX+lORZVpF7uRI4/0x1RvkVh2CbRa
         yJFGTgv8PVMMR7KWq9nmZuh6iDmo4CJ094UMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794660887; x=1795265687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kzZ572SYqNYS7AFbKEhSpyO0POmges/XmCJlcN/iV2Y=;
        b=WBj8gYvnsgZuiBMre9mlXJkvPVWscxQPPNW2lIC4ffYiGtJf9hT3Yk1I/pXDeftQKX
         ZIf+6bLpGWMNtsTME7Blgc2kuDx2NL9GRec0WJ1uKZrl4bxXNXMAdTsxluYUTsQXi3E3
         8AadPSeeOE9QWzIkAVlWG6+xuBmKE/NupbqM3YmFn+9HoVA9dUDkbvxFaAqVrTWo6JEP
         Qq16fwPJcdCBGrp8Cq9Pvtq4dT9Vmcwl59kWAhN0m4SRuoiAV/D3bcRzeKukp+SamLSP
         BrVLT/65Yju5+iSJT7X9fvkgEVkDD9J+a9aTNVASOmy93L0VY1njz1RZ5vluNsNRapxF
         8Jfw==
X-Forwarded-Encrypted: i=1; AL+hErEp0WUGdRIqEBIJWMdX1W7KOswl2vyC6HNbyP+6TujjtvFXcOg4DJr94iDwpgEj793IV7g+ItLrIgrL+AqtYg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/FpeVulDeaV2FGe6FjWgPc2KCIEKIzy9KCi4l15XNrcbAgu1oR
	0PybBChdJb/IZOb+63L7yFpuX8t4j1s1R9+6fazhj+J5gqwkfi3U1kwKGc+juhPtMu0=
X-Gm-Gg: AYBFou1p3ao5hKHBkfPpWMwgWlmJ5BvgBn+qP17kVu4wvy11qS9WzpzFyaLYpZdt0+q
	i1Y3hHzS5mZXS6g1dHZQaalLvUBBUASIMcA+2GZ5NXBfLIYKF97L5kicV1as9P7G8UPHNx9QzpK
	U2ObD6FqLGLzMr2Nswyxf/0XZz8nDZBdIiKwP32qer5lTt2x9VZbUoF38MT3HrU5sl4ULIvBTN8
	QAm6CHDrjiyo9dcAidEng+QbXTP5K6lsCxLnwN4OUO52DMkXoZsvpcQ92TrSBLjDGKbHCAkFnA8
	/FVBvhvoP7L9IRbWNO7OyG9e96k7k8iyCoDXxExDv+BNwNCYE7GcoySjE/QWJjLhWF10Y1oO3Li
	281Z9qaMI7gOvElcljLcYuaeAPEjvpYEqsJSuAF79yUfqEsy7qFElptbLGv+GLuoHC9jb+Sf6Wc
	VA02nvDXSy/SRGTbraxLEoOwj9TSu8ph4YtEzVrLZQR4OHK+X5SCQNaNtpOek5uBt457qGFsZpY
	EbARXkqiCS2YYjig81vU0SmTIHNm2lD3HsyB6B9ZkcUL20hUlZwl2OTcDZHMb1OPbI80uQZ5/R+
	XFGxCT9Kf41BkXhQCzOesDWPgjNDH0a5s40lIJ5ERWbuteruqhq4kVH8Unf9rBgLi+5HQSId7C+
	W4MWvRN3diVhF
X-Received: by 2002:a05:701b:2706:b0:1b2:4c54:d976 with SMTP id a92af1059eb24-1b50311d3e0mr5111198c88.31.1794660886535;
        Sat, 14 Nov 2026 04:54:46 -0800 (PST)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b50319e381sm15468097c88.12.2026.11.14.04.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 04:54:46 -0800 (PST)
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com,
	royalnet026@gmail.com,
	ulf.hansson@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	vlwwwwww@gmail.com,
	jeff.hugo@oss.qualcomm.com,
	rfoss@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v17 00/12] accel/rocket: RK3576 NPU (RKNN) enablement
Date: Sat, 14 Nov 2026 21:54:35 +0900
Message-ID: <20261114125437.9986-1-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1794615324.git.gahing@gahingwoo.com>
References: <cover.1794615324.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_045448_203053_C2C69F9B 
X-CRM114-Status: UNSURE (   6.79  )
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

On Sat, Nov 14, 2026 at 04:05:17PM +1300, Jiaxing Hu wrote:
> This series adds RK3576 NPU (RKNN) support to the mainline DRM rocket
> driver.

I checked the accel/rocket patches for regressions on a ROCK 5B+
(RK3588): MobileNet inference with up to 6 concurrent clients, runtime
PM cycling, core unbind/rebind, GET_PARAM (returns 1) and recovery from
93 forced job timeouts all pass, with no warnings.

For patches 2-5 and 8-10:

Tested-by: Sidong Yang <sidong.yang@furiosa.ai> # RK3588, ROCK 5B+

Thanks,
Sidong

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
