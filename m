Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF4F105F784
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPNTcX/5u88akGKYA3fCM63eLD9zmpWa8LwSk8CjEOw=; b=XsEdGqDKMrAPZy
	CC0NwLjD7HEgssox/FayYXVp0Gg8TsfFR6QFxeQec6YWa11w5YFEVwjASSmQ4REz+STiOvZ7ITN76
	oWjXq0k/QzINGHomNJewZ51rIvdiTwQFH5/ctDdXeZaf4TdOOM4XbhR0vRNA4R0cpRDlO9bBvO1t0
	eYxCfUUxEMxJzBN2NsJP/1vNuCNoOQ/7alw42KmJWaaY7SGX1t77ji16f2X3sxQ20jMU19T6wzH+o
	GQlsL1uUezkM+50cS7h8hmvYk6rvVmfIXOTETTvhZHQW7Pwo2vTfz6R+fN4Tetl4f2JrKq3P3HzmX
	8jiqOSnNykw4TS8hs/Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ynC-0000000HNvu-29Xy;
	Fri, 13 Mar 2026 09:26:50 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0yn8-0000000HNuo-1PLL
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 09:26:49 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-660a58841d4so2450267a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Mar 2026 02:26:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773394004; cv=none;
        d=google.com; s=arc-20240605;
        b=bq28rhwvjzhL2W8wQbfjL0643HwMMH/yIcgV/bayzPUHyTuSGMJ394HdGW5y/PHtIC
         axQOMBuYfum1noz1PSawdFAIXAzmEb/j1b9dZLLi9v7QbzACVqWHCNLlLs/5M3i+R32m
         1N13rdTTbYt39m48aMnHkUK2p4BTxIp6u+dfHj1xv/j+1rtFii56DvcZJxJnWAHQoUv7
         cWrJM+9CQgn0q0n3qQ+EVwTiQr+BJb1SonJ9006l+LcuoEF+8qem3WCLFyohKkX9o+bC
         iWVdpS2NdyENAVPqBYUVQ9eTNjkZ6P9vE2wPZQA084YTTVSgEk8uNkWbbBISoXKV9TWs
         U/nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9zhdSL5TZ0+7QU3R0xnxIo4ImepctE4X0d6M5LPIqcs=;
        fh=l2bljbyCm7XxcA0ZU/zk1uX+Eh5l/Pwcer30czlrYm4=;
        b=UWm0stooZY7PSplXYOy8usdASlnli59zf36Nrjf5fNrLbML3krDDmwWc0UaB62C0Dh
         soUDoV3jnXI1P8REFli3mSKFPXj8hFltalgV1Y2j+goNRomvWqd+5iC8hBRhXLWDU6gr
         RjPxiqn9VFmLQHO+JTcNg2FPUN4PdfhXrBJaKUQ6cvYM4V1P+3FTBL6OvM2QOb/UQ5jY
         ie5M5DGRwTlVs2GTrdpSv8o/Kx1FQshV/3jmhvrMjmZ/v9bxkV3WdGIFfG4Yo4QOWcgv
         VmFkXiM6RmYZ38QxEy9ewK3jhzqzGQ54ZsgTScpYMHtpGb5zH1CAfJjn2gpaMI/qdBT7
         dx0g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773394004; x=1773998804; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9zhdSL5TZ0+7QU3R0xnxIo4ImepctE4X0d6M5LPIqcs=;
        b=ANjJGJbSUBJUhRnm0O+cjwb0AXQ3/xMWF2gsh5u6l2gx41glNeWMorAWuiWyqjK6Ip
         RRbPdExpHIcdgURrx9uixdkQTf5Yc4WBlfZ9Ibv6zlGTSO//ey5P8JeEORrLj6lspg66
         6C+tBVdAR/BT0bvC2N2pfMZrDhiK2Qbctaa7gNL/aAMCvPRb5lZYdn9jUWB6oVp15tj+
         Xy3N47ZOs+oIU5IcF2CasrrqRpTujaH7RgfDWbbi89YMnKA9veByZK4d3oEbhfs8g7HP
         W3aUYIYgXxlYydTJprZ+IpbBR5wcrrPe1YILzqQzjVVHbwTOW1weVtoTIfv6kIw8SD4s
         NdkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773394004; x=1773998804;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9zhdSL5TZ0+7QU3R0xnxIo4ImepctE4X0d6M5LPIqcs=;
        b=pWPiUPqiJVGy2nLGrSjsLysl8KKIMiAGbL20SN8Kx5mEUOLcemEa4nhR/6Jy651I9S
         AmjBJyxxsvWEzIB/xOrjZnNzoPKzFIMLePSdbkNXIqEPAsPXXXe762j8PjEGV5rr+lHN
         5+xccjcqHvZhrRFTTWjPwNfzpWEmR2KETS8GoC2IBaQqNBfBEqMQEFJ/zn0TWwZ+Yvj/
         qhOz2ZAUdlJ7kgvNl730NDTi505Pufku7R4gkUMiWpkTxgOPkCs8CkXSo8080C3bGqYt
         hGQmY9Zjx9Gvt2WAIF2ofFBT6F/DUbGO0xA+WiZwyvj4EuzdfcJavlmdDgUws4XvrtHY
         Lx+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWhCOoc/NHXIC861rzwHSn60MYSksWWU+gK47/Qzk2AsjbRWwLFtyFw2Jca9uQoZq5/EPgTZvPnaMpbbBymeQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YysM8FU49Y2sDqDE4pWEEwyZQufxZWLTT4rBsddYby1hCAk2XUA
	+Hwqog3wdz84n+nmTP6KKTzMSL4Cbej+/cxSc4W02EpQY+GkWA3WclvcXOjS9IpLItYkqja63sL
	+NFvg8QpLDQiltO6ZkJfMk70YM0CHYr0=
X-Gm-Gg: ATEYQzyfG4RQ1kFf0FY+pVvvuAavbhaD7lk6WFpylR/bl6+SnYmZ6qi+UM/NxqGSBWf
	Yvxc3aXms7C5/w2qcehtRmwBH6qvjyKVbNv4Yuma1Wb4QY1xwKhAKPVHFI7sTo1fStLZ+n0OqUr
	e74mTL7u/41wAcR+CHW6fI2DnQu4aDJnJPgwMEgmVlxhlnEnZtjCGazJwDgjmqgIC1LW1WuUXvf
	8q9BvhjRJ7hsAvMtn5pwPFZaOQPj8lAUmkke6BdYJIwU4l5syCctYyMviJ+qL8fDT0LBdxCtJiY
	RIaHbg==
X-Received: by 2002:a17:907:6d24:b0:b95:53ff:5e00 with SMTP id
 a640c23a62f3a-b97651ec2fcmr160615366b.58.1773394003605; Fri, 13 Mar 2026
 02:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260226101032.1042-1-linux.amoon@gmail.com> <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com> <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com> <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org> <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org> <7b5592e7-8a9d-2cf0-bb3e-e306a6337165@rock-chips.com>
 <CANAwSgTaZqsHYXD_ACkJGGLgk4knc7N72f4qrJaaenE-cXM8BA@mail.gmail.com> <DH0S7TSFKDJV.2YPSBH9F142LL@kernel.org>
In-Reply-To: <DH0S7TSFKDJV.2YPSBH9F142LL@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 13 Mar 2026 14:56:28 +0530
X-Gm-Features: AaiRm53rZCLp_kErJJxBMXMWmeLwePiSPPATSICps4w1XibNQCvpnT-mxDnWsvY
Message-ID: <CANAwSgQCQ4z7p7Z8qe2mRqUY7zKe0w0wE+1RfYtD4NePzoit3A@mail.gmail.com>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Danilo Krummrich <dakr@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Grimmauld <grimmauld@grimmauld.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_022647_100865_4ABE1750 
X-CRM114-Status: GOOD (  11.37  )
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

Hi Danilo,

On Thu, 12 Mar 2026 at 17:24, Danilo Krummrich <dakr@kernel.org> wrote:
>
> On Thu Mar 12, 2026 at 12:40 PM CET, Anand Moon wrote:
> > I've reproduced the issue on my end. Following Danilo's suggestion,
> > I used PROBE_FORCE_SYNCHRONOUS to resolve the warning.
>
> I did not propose to add PROBE_FORCE_SYNCHRONOUS, I just noted that we should
> not force all subsequent drivers into async probe() by adding
> PROBE_PREFER_ASYNCHRONOUS before the issue is resolved.

My apologies,Thanks for clarifying. I misunderstood your point.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
