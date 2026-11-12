Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0BD606A33B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 12:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xcKM/syr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cCqjw9Ln
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aVYJTH+kOe88b4WJC64cxiDOt1w7WP1FQouEuR0US3s=; b=xcKM/syrj/H4Z1ZIAMPkCr5RC/
	wm2WfYArfFqVvMSfQfYOXH7L3zlmp6GtfzW/2+lH96LBtQq/rYEnqO5CNd7BrH4llbGwi2Vzl/uNo
	J3Ek0060rytGIF5O3XFKAEre8Xu1X21bY+EXfXQsoEha502DVf1K9pxErrDbLO3GoWTTM/0yUxBZ+
	+w0rPhbd+NDTVxXvEHqIVz341zG81QBL5GBZi7+ozVLvzotmv9MxxkV+epCqEFM+h82rDOEp+PpqO
	n9HxS/+3U5sABSgXGgXArTPERVKE37/R/WoSFWgUmLwufYlvsJG+GKLyVjjNlqJWvhj3cane0r56u
	XjUSJBXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRTkA-00000009q4l-2klR;
	Thu, 12 Nov 2026 12:17:30 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRTk1-00000009q1H-3RKz
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 12:17:28 +0000
Received: by mail-pj2-x03.google.com with SMTP id 98e67ed59e1d1-3b1856d99f7so101723a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 04:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794485840; x=1795090640; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=t+ufZCvXNHzyxYBYTdCkDnWym74ZB21L+z+qr86hT/0=;
        b=cCqjw9Lnp6HkY3hZ3q09Fch/jzvm4Hgaf1nPUl1jqDt2WZLuTmFxX4koNjjkC1hrQw
         4X3bzGPkVN8qdmalWZO0XlmoLiAZvirLdAEFV+i0EXC24EzDNHGgoKFfX5N8E1uPQZ0m
         350q9kuplYgEXyWOlGR3UtLelKup/TxP6brqKpJeo9bSEvc7rWuaiWlzPP3BC8tunvKh
         BzhntrdUaGnxdUkmX67rVJT2MOIPVAt0mza/yAmHXvaR1aEycejk7aUCdicsRzfTSpKK
         fJdMhK7NJw3Hu+8Xt5GS94tNNthTQwWVP9Q4oj07u1gr1TXg+L3b3+X/mAaT0NpJsNSl
         xu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794485840; x=1795090640;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t+ufZCvXNHzyxYBYTdCkDnWym74ZB21L+z+qr86hT/0=;
        b=ZLGHPQpw7i4i/LBkxOvMxXP19dqN2EMK2oS4J6rTAce4gmlA/nLj5pJnbXQNMlhlxc
         JRLISJUuvmqYqJE4Xx4UhHP/5Qk7L2iOqLVkdKoAe07HoP68YThyw/AnLdJ9/S1ziX2z
         rRhn/foFuq9ff/l5Pu++ky9R9nHb4ZAsnetFvh+TSq8/2Hto9fgwvCUNyrCoENiq5BjR
         ODDEgxTflpDi1Nrc0b0RIoFtakLuwfcli5Z3a/JLaeEMuYaafmvEH68p37CBD9ujoM/S
         tRfz8mxKDBOghrvKcQ8VI3xDFLuz45omaS5irfeGn61gvSpYQ5Yh6UEEKEtD7vssvvzC
         jXBA==
X-Forwarded-Encrypted: i=1; AL+hErH2ibFIoZCGGldTqZV3WAUynq9jOiKzmNF2VpyfOt0VqMG+xzg+RI7YMsNQ8VNlBgx/fJF6HJA6cbFzl2ROvA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8Z6sX3KypQFkxwl5JoWD/sIpQJAddaENSnmFYr778+seeA2vUY
	f3tIVM5ONS6lInD6488QgnAEPjLImyZjxcO8pB5o7Q4eWqbLuADtw1bv
X-Gm-Gg: AYBFou1SdMFnlHha9ZpiHs92BbowH6obtyXI7/zEZWh86V4SbXbVvu7bpVmaxQeE4A/
	77udSRgbwQdklVcEwidFMyTyUZ03z6f2r0G8g8XkOBKAlocomoMZs/pJ3pxF2jTvg46hJaIclE0
	op6UYJCuxHSw94B0JGzBASp/jkCbQuK8YXZ/VfE+vxVRtq3nkSon4cQMOjpKBjkBByFyAK6df33
	cd1uP4BfAQbWJmCn6bd9fxEq/qtLy7hwysarMZbDI5CrrXAXmcWGXTg9D4s+CRVho+glsLMTHG9
	MhazICuKqQlApAuWVZ3zdEXJaFe21ZGjrBYNyZ+w8Nuk4fw794wR1X6EKAzzFh5MqSaBJk28VIh
	Zd5Rt5DriLx9bhtxZlaZGEdgBbNVG++xo0SGOt787RW4d9odFr8PcCI6YUQO8T4hrUk5zFhNZ1m
	GFB1PtnrXE2ztWB7ODr9iwsbVYpivJ+LyURJE59mf2Uq6/efC+9drCPODj8efSYDwoWPKy/1WPu
	ZKDt2At3W8DLTnTNEk6zDZsGY+46RYJDoWUxjlg2CUgX+zBcn4G/TLz1FSV325iW761RJP9yri4
	PZtYmxzYsAGk25cebB+mYA==
X-Received: by 2002:a17:90a:8c12:b0:3b0:a7b5:c044 with SMTP id 98e67ed59e1d1-3b197c81815mr1116711a91.1.1794485840292;
        Thu, 12 Nov 2026 04:17:20 -0800 (PST)
Received: from ehlo.thunderbird.net ([2401:5a0:1000:10:233::14])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197c8b2cdsm4489297a91.16.2026.11.12.04.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 04:17:19 -0800 (PST)
Date: Thu, 12 Nov 2026 20:17:14 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Shawn Lin <shawn.lin@rock-chips.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v13_2/2=5D_phy=3A_rockchip=3A_naneng-?=
 =?US-ASCII?Q?combphy=3A_add_SGMII_MAC_selection_for_RK3568?=
User-Agent: K-9 Mail for Android
In-Reply-To: <avV77eoO96zacmoq@parshuram>
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com> <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com> <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com> <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com> <CALj3r0jg5Ht9UUJGryuNdJdegBkPQgSTPSE6amjCr0g0PE7i6Q@mail.gmail.com> <avV77eoO96zacmoq@parshuram>
Message-ID: <073A7037-8E56-4B14-BBDD-DA3118970086@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_041721_865071_CFF0F683 
X-CRM114-Status: GOOD (  10.31  )
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On November 12, 2026 4:42:21 PM GMT+08:00, Vinod Koul <vkoul@kernel.org> wrote:
>On 22-10-26, 10:32, Coia Prant wrote:
>> Hi Vinod,
>> 
>> Gentle ping on this series.
>> 
>> The net-next parts (XPCS glue, dwmac-rk SGMII) are now in linux-next:
>> https://git.kernel.org/netdev/net-next/c/5e91edfb0e45
>> 
>> The DTS changes are waiting on this PHY binding and driver to land before
>> they can be sent. Is there anything you'd like changed, or is it just
>> queued?
>
>I dont see the dt patch acked..
>

Hi Vinod,

Conor Dooley already provided an Acked-by for this patch on Oct 7th:

Acked-by: Conor Dooley <conor.dooley@microchip.com>

You can see it in the patchwork thread here:

https://patchwork.kernel.org/project/linux-phy/patch/20261006162807.2843858-2-coiaprant@gmail.com/

Or in the lore archive:

https://lore.kernel.org/all/20261007-9753b5de7344a15472337c6d@squawk/

If you need an additional Ack from someone else, please let me know.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
