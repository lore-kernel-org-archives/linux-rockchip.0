Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CA91CA0FFE
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f027uFS2AG6Yh4P0BCKh+P0YrMqRTihf/eMRkLMQ5xM=; b=HDxtVhXoFPO62G
	3CdwRkZMs8hEVaREM/OgBLnk4F1cXBpuMyROdQlsHFpTjaJRDI0Ng2F9KBjtXFWYK3BhB/giH9rEn
	JcWwxhnCFm3NiTFuX8vScLK/Y5NXEI7vXkcKJWice2I1ZJQ00EVQC4rROlK2vQQQGbcIKnfotn9Xk
	CLfsyN2eznxATcl2cB1tZ9sRF0z2QjHGLlQ8+Rz/mK8IWjNKf0aIzocmTCqXnKofi4zgfxCwIUgJA
	9UFdUmMStetGf9bJ6wY9+JbNDp+otSEY+0HC7vajpT0J1Icdhe/ceUNt4qyUn6oEYLEgTO1BuejKF
	4piZKUeppExfii6sY42Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us9pn-00000007E5U-2d3P;
	Sat, 30 Aug 2025 00:52:47 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us8zD-000000072iG-46Df
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 23:58:29 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-24a1274cfb1so156555ad.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 16:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1756511907; x=1757116707; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4ZkOb/hPcVe8gnDPdefZkpPuz6ZACFjeMAIL1vSEcE4=;
        b=Jqa/0LS65vFQrE4q+XL8d92enTmswT0QluscxjU5bJ3QTuF0CCItdBKnipRrJHRscq
         djgSD+eqjsvxWUKwofSuXfvbttBuPfFOyhGKD2bfmvXwiJ5Vf+6IaFYRwO21gfOM+M+Q
         HsxWjefMn6UPEvjd3dfqkm+BbnvIjowx9VW3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756511907; x=1757116707;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZkOb/hPcVe8gnDPdefZkpPuz6ZACFjeMAIL1vSEcE4=;
        b=jJK08HveciMpwn5vptDUheiNadFJ1NH79wqKJxcJOHDvkaL6CK5THiVo/7n/RoG/iE
         BLaRP4GN7TtIPDsBD4eb7Wz1tCAGQ9Z8FNqmDKG5PqhVljqRZ2UcxcfImhXLYvR5OXD3
         TJz5xhvhxGz9ZQEEnO1Np9MYu5vrPDghNmId+VEHYhtIvrUlzafid7hEkBc3yjeBA7L4
         dJyPEJeTEmnG8ioi6SqGRGJ6QFG/3bJFPH3mwGPB0rem3JvX+iP8OY8JB1Rv1J5kPmf1
         Ruzoyl60Vnq4+ZxVkOPVRO9SHPKmTPv477Ed/HT3s0K0I4RCIhQUvOflOHjU7XNypxxQ
         eVpg==
X-Forwarded-Encrypted: i=1; AJvYcCVNYnC4GO38y+1wISyRJAuiskQwed/vyOfP0POmqx7YtddJfGm9M/eVdL/W6fQx2IT6evd/0d4uPKWp1fvQcA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUvje+hG7ienAr5DVfNvlE3QQFoeGPI6zq4zEpgH9wAzHgcdl9
	lIevwSuXPyUFFKRmbNu1hhmAL2VPzaFBjWhNGHlf3SM01BAYdj9SYo9pZf0ScAy7/Q==
X-Gm-Gg: ASbGnctdReK5JyrGSDgNI9IJ+gXNWSVmHOXojpgmtlPDsX7ANIPkIRBbaapNYulGroJ
	J3ReMWiuxJbI/wAJTyqDbpjvRTE8bNGdb6aNX++7LZ1aQjl2IZlNjX5sdSGpaOmXMVE2MltPt8G
	5ga1hNMmwu0jScYmQqploh058mwzZMU1cQUZVfjbR+XWvxA+9wd2ADz66cBFL/4z53mxtfOCGe5
	BiWEcqGfx9WwO0cIFXKP2eEHZDpdYV0DXGXcbmNOz0FzJLcNx43W1S+ZztTeGm7zS+URvXX/5BW
	MKBxjfdGFNBEyDDdU7VlaxZSQDOxB+bITno20uwPcraaWNb8ltMBnYF9KhiL+PDJPXD50l4TbCa
	diqB2WNsjS2o5wB7hWF8xrI978N+SI6NIvtqMl2DzoFKKVQQyTv8Bw1LR47xQ
X-Google-Smtp-Source: AGHT+IFvZvVbN+tcqDt9IuyuJa1uB30zy62FBhMsBU2d4G2xup0DO7jJDkNE7M+ZQIjDPW8i5FxZDw==
X-Received: by 2002:a17:903:2308:b0:249:33da:b3a with SMTP id d9443c01a7336-249448ad928mr5527165ad.14.1756511906811;
        Fri, 29 Aug 2025 16:58:26 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:1d4b:87a6:eef4:9438])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-24906390e6bsm36386045ad.96.2025.08.29.16.58.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 16:58:25 -0700 (PDT)
Date: Fri, 29 Aug 2025 16:58:24 -0700
From: Brian Norris <briannorris@chromium.org>
To: Lukas Wunner <lukas@wunner.de>
Cc: manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: Re: [PATCH v6 2/4] PCI: host-common: Add link down handling for Root
 Ports
Message-ID: <aLI-oKWVJHFfst-i@google.com>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
 <20250715-pci-port-reset-v6-2-6f9cce94e7bb@oss.qualcomm.com>
 <aLC7KIoi-LoH2en4@google.com>
 <aLFmSFe5iyYDrIjt@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aLFmSFe5iyYDrIjt@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_165828_042855_33FDDA1D 
X-CRM114-Status: GOOD (  38.99  )
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

Hi Lukas,

On Fri, Aug 29, 2025 at 10:35:20AM +0200, Lukas Wunner wrote:
> On Thu, Aug 28, 2025 at 01:25:12PM -0700, Brian Norris wrote:
> > On the flip side: it's not clear
> > PCI_ERS_RESULT_NEED_RESET+pci_channel_io_normal works as documented
> > either. An endpoint might think it's requesting a slot reset, but
> > pcie_do_recovery() will ignore that and skip reset_subordinates()
> > (pci_host_reset_root_port()).
> > 
> > All in all, the docs sound like endpoints _should_ have control over
> > whether we exercise a full port/slot reset for all types of errors. But
> > in practice, we do not actually give it that control. i.e., your commit
> > message is correct, and the docs are not.
> > 
> > I have half a mind to suggest the appended change, so the behavior
> > matches (some of) the docs a little better [1].
> 
> A change similar to the one you're proposing is already queued on the
> pci/aer topic branch for v6.18:
> 
> https://git.kernel.org/pci/pci/c/d0a2dee7d458

Wow, nice coincidence. It's a reminder I should work off the maintainer
/ -next branch, instead of just mainline...

> Here's the corresponding cover letter:
> 
> https://lore.kernel.org/r/cover.1755008151.git.lukas@wunner.de
> 
> There was a discussion why I didn't take the exact same approach you're
> proposing, but only a similar one:
> 
> https://lore.kernel.org/r/aJ2uE6v46Zib30Jh@wunner.de
> https://lore.kernel.org/r/aKHWf3L0NCl_CET5@wunner.de

Wow, that's a ton of great background and explanation. Thanks!

> > Specifically, I'm trying to see what's supposed to happen with
> > PCI_ERS_RESULT_CAN_RECOVER. I see that for pci_channel_io_frozen, almost
> > all endpoint drivers return PCI_ERS_RESULT_NEED_RESET, but if drivers
> > actually return PCI_ERS_RESULT_CAN_RECOVER, it's unclear what should
> > happen.
> > 
> > Today, we don't actually respect it; pcie_do_recovery() just calls
> > reset_subordinates() (pci_host_reset_root_port()) unconditionally. The
> > only thing that return code affects is whether we call
> > report_mmio_enabled() vs report_slot_reset() afterward. This seems odd.
> 
> In the series queued on pci/aer, I've only allowed drivers to opt in
> to a reset on Non-Fatal Errors.  I didn't dare also letting them opt
> out of a reset on Fatal Errors.

Right, I can see where the latter is risky. Frankly, while I have
endpoint drivers suggesting they should be able to do this, I'm not sure
that's a great idea. Or at least, I can see how it would potentially
break other clients, as you explain.

> These changes of behavior are always risky, so it seemed prudent to not
> introduce too many changes at once.  There was no urgent need to also
> change behavior for Fatal Errors for the use case at hand (the xe graphics
> driver).  I went through all drivers with pci_error_handlers to avoid
> breaking any of them.  It's very tedious work, takes weeks.  It would
> be necessary to do that again when changing behavior for Fatal Errors.
> 
> pcieaer-howto.rst justifies the unconditional reset on Fatal Errors by
> saying that the link is unreliable and that a reset is thus required.
> 
> On the other hand, pci-error-recovery.rst (which is a few months older
> than pcieaer-howto.rst) says in section "STEP 3: Link Reset":
> "This is a PCIe specific step and is done whenever a fatal error has been
> detected"
> 
> I'm wondering if the authors of pcieaer-howto.rst took that at face value
> and thought they'd *have* to reset the link on Fatal Errors.
> 
> Looking through the Fatal Errors in PCIe r7.0 sec 6.2.7, I think a reset
> is justified for some of them, but optional for others.  Which leads me
> to believe that the AER driver should actually enforce a reset only for
> certain Fatal Errors, not all of them.  So this seems like something
> worth revisiting in the future.

Hmm, possibly. I haven't looked so closely at the details on all Fatal
Errors, but I may have a look eventually.

> > All in all, the docs sound like endpoints _should_ have control over
> > whether we exercise a full port/slot reset for all types of errors. But
> > in practice, we do not actually give it that control. i.e., your commit
> > message is correct, and the docs are not.
> 
> Indeed the documentation is no longer in sync with the code.  I've just
> submitted a series to rectify that and cc'ed you:
> 
> https://lore.kernel.org/r/cover.1756451884.git.lukas@wunner.de

Thanks! I'll try to take a pass at reviewing, but it may not be prompt.

Thanks again for all the info and work here.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
