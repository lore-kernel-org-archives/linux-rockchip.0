Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C63BC7EE22
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 11:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7piLcnjcXAOZ5Ijd5PAYjrNlVuXsSd1kmZEvhgXahC4=; b=ivqU+mR3bvVNDX
	21mym3u5mekT+WMkiBpfRFTOblYUFO1dnHdXDTuugs8ajvZNO6rI1iJVEWrCW4ca5RZ/rxpm8aZT+
	7h1MJZGXOYTPDcmhQr0fKMt9SJ1mg+eBI+opRaNZC/XCImR84dhmQXrNx/y+eH+RvT9o7rgOo4LrD
	JiMbjkT1IP4XukN6wnmX0Ts+Bk0N5DOmkoCFw/+g/Cs0ULFQ+Hm6BEwIu+Wn6ryYrWytMwMVt5kDG
	DhwktxQfu7WpE4uA7VbPC/NcelC4ihGrT3Zik7eogFLhhsJM9VOW4bz7ig6EnRR2+vOf4rLcBtMof
	CTpOSUyfdBMe6/6BvUQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyW0Q-001vQ3-05;
	Mon, 15 May 2023 11:04:42 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyW0N-001vPT-23;
	Mon, 15 May 2023 11:04:40 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bcb4a81ceso22287431a12.2;
        Mon, 15 May 2023 04:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684148677; x=1686740677;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lERUo+WLdZx4JBH1Pw+XtLzFG1CgqVYgHbVRbkTw/zc=;
        b=MpUkLvhNClhT0+vzP2Wf7eEd6ur5TUAoj+zZSAkek414G63FLBv4no2rTUVduz4l9o
         qkQRw2DEssURnU9zbv5bHx5vD+nvhTvl8ea3XSimE6AOLO4oY0qpexU4ZSZg8IZ5fJmc
         fNzTTXcbVeNjkFD7KRdDF47H50mlVHyyX7IsGC3ri3KKZjxHL7CkiYH6MVa4xiDdClQN
         exzTJ/0ON2HEwQxZ9/vz+uw40MScC4o/fRjspKeyp+5Tfxx75YbqBTrmPWNZkrz2/9GE
         eyTLzYpJNPOP1M5XMjvE+pUt5Les/zp/XhJ+h1XFmMEDxwJvlILT6ZOd+dQk1qdcI/PQ
         uRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684148677; x=1686740677;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lERUo+WLdZx4JBH1Pw+XtLzFG1CgqVYgHbVRbkTw/zc=;
        b=J2BWnyel3tFrrm4z/DK8AVhJwhPe65KpITh5CsQIZwlizSlsbzV8TmT8PgsEnaRAhq
         CPoRpB92awKnvQ0fw7Flp6u9YIdzUSjXzGDkQ3KGQj+FcTgUJejtcJByKrsE5ndaHd7k
         QgoTRhRnmSwEVa3BvehWEuE8JS46rZTrWQ91MEIr5LziqPJ97BYa3z/cjSxr0OGMUzgp
         vjZ6e6RxaWJIORJ+kd2H4fohvwVbiq+OSXwilp3MJg2IR6rlfQbVldByLZb/G21fwqiO
         sPGpyU/3DUsMZzoDt+eQMwGXbfHDPNVBxqiYzFno8kdid+dyVgmWIyrfwqLGwhWj2tFS
         zlSQ==
X-Gm-Message-State: AC+VfDxViNS5PNhIgPOMWM6VH/f1CJ4tCazCV0qi57QcfHgx+WnKGqG6
	lNMgZLYnadDRyf9GfEg7T8Q=
X-Google-Smtp-Source: ACHHUZ6wMR84Ke6Bj7QUjIoHhVknpSvv7L8BQTIL2uFttHnpEnLdiTBzHPFK9FhK4YNbXf1M57YKrQ==
X-Received: by 2002:a17:907:7e97:b0:968:4ce9:677a with SMTP id qb23-20020a1709077e9700b009684ce9677amr24562615ejc.38.1684148677324;
        Mon, 15 May 2023 04:04:37 -0700 (PDT)
Received: from localhost ([146.70.133.78])
        by smtp.gmail.com with ESMTPSA id de9-20020a1709069bc900b0094e6a9c1d24sm9520105ejc.12.2023.05.15.04.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 04:04:36 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 15 May 2023 13:04:34 +0200
Message-Id: <CSMSVO8Z73NV.3MX3FRNO026T9@vincent-arch>
Cc: <kw@linux.com>, <heiko@sntech.de>, <robh@kernel.org>,
 <linux-pci@vger.kernel.org>, <shawn.lin@rock-chips.com>,
 <linux-kernel@vger.kernel.org>, <lgirdwood@gmail.com>,
 <linux-rockchip@lists.infradead.org>, <broonie@kernel.org>,
 <bhelgaas@google.com>, <linux-kernel-mentees@lists.linuxfoundation.org>,
 <lpieralisi@kernel.org>, <linux-arm-kernel@lists.infradead.org>, "Dan
 Johansen" <strit@manjaro.org>, "Catalin Marinas" <catalin.marinas@arm.com>,
 "Will Deacon" <will@kernel.org>, "Robin Murphy" <robin.murphy@arm.com>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Peter Geis" <pgwipeout@gmail.com>, "Bjorn Helgaas" <helgaas@kernel.org>
X-Mailer: aerc 0.15.1
References: <CSK8M39MQL2C.3S7JO031H0BA2@vincent-arch>
 <ZF7m1npzLZmawT8Y@bhelgaas>
 <CAMdYzYqV72=pQa-U3a2N7MZ2ChBNL74QrxHQLbMZJxiftTK9sA@mail.gmail.com>
In-Reply-To: <CAMdYzYqV72=pQa-U3a2N7MZ2ChBNL74QrxHQLbMZJxiftTK9sA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_040439_693163_AFF31FC9 
X-CRM114-Status: GOOD (  22.88  )
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

> >
> > There *is* a way for a PCIe device to say "I need more time".  It does
> > this by responding to that Vendor ID config read with Request Retry
> > Status (RRS, aka CRS in older specs), which means "I'm not ready yet,
> > but I will be ready in the future."  Adding a delay would definitely
> > make a difference here, so my guess is this is what's happening.
> >
> > Most root complexes return ~0 data to the CPU when a config read
> > terminates with UR or RRS.  It sounds like rockchip does this for UR
> > but possibly not for RRS.
> >
> > There is a "RRS Software Visibility" feature, which is supposed to
> > turn the RRS into a special value (Vendor ID == 0x0001), but per [1],
> > rockchip doesn't support it (lspci calls it "CRSVisible").
> >
> > But the CPU load instruction corresponding to the config read has to
> > complete by reading *something* or else be aborted.  It sounds like
> > it's aborted in this case.  I don't know the arm64 details, but if we
> > could catch that abort and determine that it was an RRS and not a UR,
> > maybe we could fabricate the magic RRS 0x0001 value.
> >
> > imx6q_pcie_abort_handler() does something like that, although I think
> > it's for arm32, not arm64.  But obviously we already catch the abort
> > enough to dump the register state and panic, so maybe there's a way to
> > extend that?
>
> Perhaps a hook mechanism that allows drivers to register with the
> serror handler and offer to handle specific errors before the generic
> code causes the system panic?

This sounds to me a good general solution that also help to handle 
future HW like this one.

So this is a Concept Ack for me.

Cheers!

Vincent.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
