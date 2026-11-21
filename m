Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8512E606A325
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 11:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dDjmS9R5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pardini.net header.i=@pardini.net header.a=rsa-sha256 header.s=google header.b=Q7anUxom
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=URw95gAaNyMSCmRD+gof92zyCbsGOgNvtSs4tbO+zUE=; b=dDjmS9R58dO/usvHibcOIpsiyh
	DfMnZ6y6ozsYJpQGKSv3SBBtsPCh/BxMiWf2YlxvbjK3XbhgExEsavyjX3WuJLaVoLHEbZfuH4zhg
	PUIMp28xNfrTTz3TzAEzC46DrYwd9XEFSAMGO7ti0HXUiEAWEuKeRCOVk6CuWWAulLkOpNilIkYNz
	8FNfaB20IxP2R+Tpgisp6MPpoarkNwBjxum7SaQ8MXqdObo+CqvK3ZrXrUR+cqRZ6ZnR+yxwxQ4SV
	oePOsd3Y3cMnCnkV87WaaWUD3PdGJmXK91ob7/QswSK+EmzUjAUiz6G/1dOqPRxc9OBxCypy9Py6b
	hfPL3vDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjPr-0000000H6H2-2grR;
	Sat, 21 Nov 2026 11:37:59 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUjPo-0000000H6Fi-2cGC
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Nov 2026 11:37:58 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6ba380cd8dbso2281187a12.3
        for <linux-rockchip@lists.infradead.org>; Sat, 21 Nov 2026 03:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1795261074; x=1795865874; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QWBZ24J2L01VeEpwZsAilZvLBxGps9oMKqAOB5tV14o=;
        b=Q7anUxomp2wdVcLWRSgo2MpWhn+rAO24OR7mTkgPTeUMtoSGuUKiT9D7ndKbAhkCRd
         G2L1siAqg3wQapPKTRXOGHrGq5Gm13fAutZI4cDycxWTnEhRwMv1pWsLYVlMY2HhGsum
         Z/RAiDk3xCCz7zFYG4zTN0KR6CAai33oruGV5PgS4LW9272jn0jywH02mAFW2cLo0Kpb
         +ms3WHx5jU6jGLNC8GtNk86+CcPd1dGVxxcFnD7yZzXnsKNOhhrnp/Z8uw+d/aApIPAZ
         xn3ZUjHQa76OabFyWWRyp0JepSeQTXCpP+TJstcty8CN0EX/udXZKpyTWUgq4HNDv6Be
         QgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795261074; x=1795865874;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QWBZ24J2L01VeEpwZsAilZvLBxGps9oMKqAOB5tV14o=;
        b=rDzIYECOKayAOj4ppyhl+MydueZsABC+tzCxd+BIKrbKN3a09eJ3cfHOIlNXwMki3+
         UoeXU5wgB/x4LAFHoEaUWrRq7VK54Tygix+In09a4PY0cjkil7kQPaTo2rAZI1X9icxB
         KvqN+rF3svB2o2502k6BhRqoRssIBzPhz+sf3mK/xDg8EIlxxQYCuAGe3tHsnk7Zu4PM
         x8NfY0gAPEu0NOg52OnbmuS3G1MqNR76bpOmDErk10JQtB5QW5jziRUiLVZluyxT/3ht
         gowP8eHRhgShtVrvM4HvdR83SVlZ/XMfhmPS+ATTEef2qyiU0mKF9zJZ7AI8IO3tmGaL
         Q7TA==
X-Forwarded-Encrypted: i=1; AL+hErHFW1yixkXAtrWHgDS78MHvBy3TwjqhjCiln51PGYYnr0DtZ4eyhf2cFlGYKRf8huwlsyejyH7kK+1NalWmMA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+N0jYy7xsuysMyK9efPyGq5cVoI7gHwUqSeIaZ7S99Bz5279p/
	g/gIyiM5hY5DnBB3hlvu6SeSox7xdBYMuAPLIffdbyo2/PBryEr5VvdpT61ckaHN8A==
X-Gm-Gg: AZFdTZey/mr1BcTZ64OQmQGlCERfptoPDs7J9UY9UBACYOgtxRD57oN+SanIq6TTwJt
	BZbOqJJhBjvL0CEd5yUQZZ2m8HAgFKXi8EHsmRIISG/Rw7yreS7Uql4BKu9n/jx7Kyt0GoDXj2D
	cKbwtDsbK12YG5E+JLHbzhEd4uddpl5Uzxby6iKXkwtKo4Fl/6BVmCxM/ACSmuGJAUWfk1DHq6t
	qMWM6MZIkVG9Bno32fMb1T2IEO2KIiefonusX/y2O3AKkygFZfrtjQGL0uaS5iMHAqz5OeGiwGO
	s+tqq81kz44ghmT94cYQtgG4NS0yW42kbqICNZGoRtkIq/NjdaPkMa7hOuvs+qekRr9TYwrOd7L
	gnm0m2Mc9FFQKkBIPJU7kdHeT+nnOeAwZhitbLOzVXGNTKIxqgKQuSskeKVa1gIk3FHVny73gtt
	g9UX2qp3IAokNmcq7Q71Cdh4E0W0BVifT4W2hXHjnQoGAKtliaJFp/pwk+aO3nsS/p5Js8JH5N5
	IKfcYYlW9uaBkydDU+uH05+sRrEnqm07g5p8FYzT6JEia6rd7BJFhaaScbYQzcZYVSOuU/nWqor
	BEO9nvdr6dBUkF4ZN2UJX1DKakKeRu1ul5HTcHJkWLxi4KZtpBgqPTXLdTr6Cen1xPpqgQrk3IZ
	h+9FO+5fdnGP2kB0RkmGzXKQvLVl0GtSg78CgPG616snRrkCpPxfVLk2hvDPgYg/3DDTO9B+HaY
	R/
X-Received: by 2002:a05:6402:1cc3:b0:6b8:7816:8735 with SMTP id 4fb4d7f45d1cf-6ba37cc09f1mr4099511a12.3.1795261074138;
        Sat, 21 Nov 2026 03:37:54 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:409e:13f1:8f3d:aa19? (2a02-a466-4d7a-0-409e-13f1-8f3d-aa19.fixed6.kpn.net. [2a02:a466:4d7a:0:409e:13f1:8f3d:aa19])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba370e91c3sm2202346a12.19.2026.11.21.03.37.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2026 03:37:52 -0800 (PST)
Message-ID: <1cf0e772-e5ab-485f-bd6a-d1088e01ad1e@pardini.net>
Date: Sat, 21 Nov 2026 12:37:52 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 0/6] usb: dwc3: introduce Rockchip glue driver
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Igor Paunovic <royalnet026@gmail.com>, Alexey Charkov <alchark@flipper.net>,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, kernel@collabora.com
References: <20261114-b4-rockchip-dwc3-rockchip-glue-v19-0-b79fb5f4b42a@collabora.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20261114-b4-rockchip-dwc3-rockchip-glue-v19-0-b79fb5f4b42a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_033756_697520_24EC1E0F 
X-CRM114-Status: UNSURE (   5.13  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/11/2026 02:01, Sebastian Reichel wrote:
> The recent Rockchip platforms have a combined PHY, which does USB3 and
> DisplayPort as well as muxing the lines in arbitrary order.
[...]

Thanks for the series! Tested on a Mekotronics R58X-Pro (RK3588,
FUSB302, source-only Type-C) on v7.4-rc3, with usbdp part3 v18:

RTL8156 2.5G USB NIC, flipped (reverse, normal, reverse): 5 Gbps every 
time. Before the series, reverse needed a dwc3 rebind.

Apple USB-C Digital AV Multiport adapter (A2119): a SanDisk Extreme Pro 
USB 3 stick on it reads ~220 MB/s at 5 Gbps while DP alt mode runs, in 
both orientations.

Tested-by: Ricardo Pardini <ricardo@pardini.net> # Mekotronics R58X-Pro 
(RK3588)

mvg,
Ricardo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
