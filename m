Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5DD606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 10:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jhFkxwz/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=LbIH1V8P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5P7f1eK/QE005uw30o3PCrqQS0HBbL5BPq4Hna7w4WI=; b=jhFkxwz/Wps3U4ZNQUG+Im/afu
	KvkNFnuD1YRIVzFqwSS/wagEOJPQnk5PNRbvcze+XOhr+KQprOPKxQzj8QV595dgO3Cw5Z6UQ1Tc3
	Hia4ScYtnByJqX4hfGk6pk0OtPoC6jO5g/Dkj9NhLp3HtzeyyZf7J48E1aizhxQ61JTsTIe1ANPvE
	6/fC1OPeb/xO//YOulfTOkAVQ26Eg5Qk0ZfQTff6GTBzAVRflueo5xYOeTDrpb36d4ul0fQ3epY2M
	r51I+LMsVH66p6hJDjTri5pZlz8L9Ve4nN1EyslLBkB8jUMiBcXETR38VwxzZedfKSkLZbA0h/C7G
	XNKWVD0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnjG-00000006DRD-28vB;
	Tue, 24 Nov 2026 10:26:26 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnjC-00000006DP8-3I1H
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 10:26:24 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-4a42b34e930so3784037f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 02:26:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795515981; x=1796120781; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rjPQj6M4ULtn6j0AWEkFprT+kxdBF0dsfklPDyAkphE=;
        b=LbIH1V8PVKarcyH39Yj/945DLWxDGWzn8c62W2m5dNEuXwmQdIg2GqQ8igO3Grk7fD
         J3/J88dGGxMmhPFEsYuV2jQK8i+2Bsq96v/JMcmcu4WKyuYCXNjAm06b8NcXUUWRe0vG
         UlVtxh/lUQyucdoJqgBLB55TgqNDS9Z0Aqd/j1dBQdsyC0Z41KJWulk1ANOKJsrD7BNB
         NxotXkCqqHHEZtYDOoitqXnr83Fvl003wl6uaKtwAszPhO+H7fGJDuENTzVAx3qYbq0h
         IHx0DcjYwgYFIRhSY0ITOWXu37PVQeKD4WrxSggAP+hit9LA6mJE4sOu+ZASisVZNjeJ
         mPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795515981; x=1796120781;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rjPQj6M4ULtn6j0AWEkFprT+kxdBF0dsfklPDyAkphE=;
        b=pvXm7comn+8HnSX5TJer62YNK3lN901gqHr59pBmdG25+zpLgMNU08aBgeLkfzsWyU
         b2qMmWKi7S4Dp+K6BBtM0Rr3LAS4ezuHzuXXvswsgPvTRiw2axOTy62D+fwvuZQnl1uk
         VgRU4iNqDYkWwpdoF3jJy3Hc/BFUXYX4dpVCm0Tfq9TWuL5VZHY2b1YHwQ260fa5ikVJ
         8a9Z9esPI3xpL/osod3lds2+MnuEkAC52R72lbKk6xiDUScXr3r0AOTj7gqRx/OBP/aK
         RjEsSJfuG3VJNmPpw0jEpzoT+bN+y7gxycQRdaeLV36lFldyFTw4+i3tBuj8pn8tltvL
         b5RQ==
X-Forwarded-Encrypted: i=1; AL+hErEdgTPqLuQHbW65WAkCz5qF8FtTsYGfDKxPT7+/TquulaicxS/XDl4DnHm+J+Wy8a3gL6V4uTixrHuVtmiQOA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/be3PwKF2eAUE7y+T4OGUGjKb/kbemN4WRofRwKbmL/jR025qj
	ot5ktiFQj38bfwKVq3etxbqwozzkG3kY88LNpGkrWk9C1D4Ed+ib5oYPimpTrjmZ4eQ=
X-Gm-Gg: AZFdTZfrcJD00jR3JVH9M32ZJ9qPe7Xv8Gll56LyUPv3M40NAn2kbh9O87R3/1pA2xx
	HtCocHTp3MdEc2ZMLYvN033GadZfSLETcrZ4B3jgDR7/rAyZmRwqGBYo55uhh0fOXkCf7TJ2vkA
	veNpfFTUN2FZSXwJdzR0ujphRUUzVZFKgSorLtqSozLgqW2dpj7QZOSVhmsv8YxNE+vC8ILMQJJ
	r2RCYNoqrU9t8OXHuqQG9fD3qCuWkSRi5ap2YW4zcTxAcoKDLftpnFNzak82tNsKag2wwzkpaq0
	4LwSR+hddrl78FY1nOAxTfJTrvlkICPmJC27KnrZ8tZb1nrv3c0YoTRAtEKbHWmLmASo/dv5YBj
	JO2mn+ChVtH2hkM7HT7maGLzr8KIhGoH98teBtBb8UguZI8a0cxBQF9YmgoftuC83HCCVX59fMF
	CdqDZXKfgJaERNekeHXkFShuYgoK8lSIu/fVjOJ3J0Jkzwd9TkNP2Behk6rwBIOyH/j+5M89Ca5
	jjTijMbONKGiru/OweCZYRjdOXMORNQG2oDpvm7SdhdVXabaFLqM8gOy4L7QHCGOdJ6YQr83GN/
	dI2ukmS05UP6UJ0TYXfwMmAFNjFQA7K3cPre+KbhI3ZOVCg3llLhQeVkdETCouDuXcdg+5ZTQPR
	dEA==
X-Received: by 2002:a05:6000:29d6:b0:48e:20f9:8d75 with SMTP id ffacd0b85a97d-4abb58ec00dmr16232655f8f.48.1795515980993;
        Tue, 24 Nov 2026 02:26:20 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6bb989eesm27197538f8f.50.2026.11.24.02.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2026 02:26:20 -0800 (PST)
Message-ID: <13dfc467-1f95-4f86-9d01-8a5830007d51@baylibre.com>
Date: Tue, 24 Nov 2026 10:26:18 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 6/8] accel/rocket: add RK3576 NPU (RKNN) support
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, sidong.yang@furiosa.ai,
 ulf.hansson@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, chaoyi.chen@rock-chips.com,
 shawn.lin@rock-chips.com, finley.xiao@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1795478392.git.gahing@gahingwoo.com>
 <c57db6883bb9c977f65d34569f1ed9cb5405bdda.1795478392.git.gahing@gahingwoo.com>
Content-Language: en-US
From: Daniel Drake <ddrake@baylibre.com>
In-Reply-To: <c57db6883bb9c977f65d34569f1ed9cb5405bdda.1795478392.git.gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_022622_867535_0B4FF4D4 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 24/11/2026 00:01, Jiaxing Hu wrote:
> Add the RK3576 NPU. Its PC_TASK_CON has a 16-bit task number, with
> pp_en, count_clear and last_layer_clear at BIT16, BIT17 and BIT18, as
> Chaoyi Chen confirmed:
> 
>   https://lore.kernel.org/all/4f300b78-d96d-4d98-8819-dc292b0c9b97@rock-chips.com/
> 
> Add it to rocket_registers.h as TASK_CON_RK3576, generated from Mesa's
> registers.xml, and use it on the RK3576. Count the cores in rocket_drv.c
> against the match table, not only the RK3588 compatible.

In the corresponding mesa change:
https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/43804/diffs

You had to tweak the header generator to allow two register definitions
to exist at the same offset.

From what I can see, Mesa has another way of allowing hw-specific
variants of a given register: variants/varset used in freedreno register
definitions. Have you explored using that?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
