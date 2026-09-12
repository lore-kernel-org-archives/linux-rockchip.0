Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F56BC88E53
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 11:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILuiKcuOKjwZIKxeWeIcfUSlOu9yfcxHJuywjV2gmDU=; b=S6TFDYFKxXGgQ6
	4dbwwZmOSCOlqmGa+lf9xhy6p35hY9kkJwf9cAKwy/85vf8nba14DQWzaUKPY7v5qKXD85Yr+jcsL
	pwscuooC++4LHQsWs/cqgfNlC3zuwY8uoYwnHpxgDK3vodP82xgaoIiSRqWzN4+PLxpNcMy+jgdHj
	EM6ts62d2eJnEW2phkJpWi2UJdCkgFHW2DycxXW+S/FR9SXH2SMv9tuQSGEx8HXSjuvkaUGhDzYoo
	1kFvmFIs25Q5U8sC1BXqnMEEHr9+u/R3JxmmCqSHfDboS/bHqyKTqen5W2vymwvpe+bhVtdoaJbQb
	RM5y7ivC3F/ozTlZdboQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5M3J-00000000pvS-3FEX;
	Sat, 12 Sep 2026 11:37:49 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5M3G-00000000puH-38af
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Sep 2026 11:37:48 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482e1b55da9so93871f8f.2
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Sep 2026 04:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789213065; x=1789817865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gJcRqsLZqK1lU4eYh1WG11ZDI4ruah74QgvrXeQigNU=;
        b=bcwNKFm4JAhxMuQ4vbBvXF6Rp2gTpl5OiDA5x44YAF94z7zLUFuezgIUt2XJ+SEI7n
         TDoQbn2LfW6GDCAJZZp/EhCUk4hfJD/bP4PgZCBWFOwLuRHVkxe/I3hnfFAZWMDuxMA7
         zvYeaoZ+fabtuL94RqLjDRleJcFwvADuNQWdn36jTM+YHlX6Ztr94lr/GvG5VCNzTwlM
         oFwTuNOkfHyvM9pd7CMFCGD9Uy7FBq0cxSGO/xHinZ3RiX780Yh6JIWImbVVXipsOrdD
         xNHXxZlFlpOGrECCmUYhmanheKw8G9OTzDJfnR6uchUYQLC5ALMqNha0WMfez1ksjS3P
         qD7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789213065; x=1789817865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gJcRqsLZqK1lU4eYh1WG11ZDI4ruah74QgvrXeQigNU=;
        b=BywH0XVVMShDVPeYlng/YfTTBQqr5TQG/KcJD7ZZXmYYmlbkHYdeSDNiFK5dim1kpM
         H2baM8ofo8gbpIkP3Zz83L9SMkwcz3aBxPseBGPfMkJk4Xgp69Dyr9PQiPnBSu7+uGyD
         3ITnH8cJighCUMGk1PrxZS2jaX2qb1SGAuVbND/GpyO0oAcOmFyMjmFDKWBMY4KNbzjX
         k1honuCUficdIgNl0PEryj+iJKCqJbyBfgAurmIm3IU9JRwnuJoJVDyHz/f1Gi0HR+Zq
         QiBLZyXfoHwVD9qgQNq2XOp+A7Ze0iZHZevDeEY4waUFVbZd531f8tmt4Mbq9Jvw8oKv
         XIjg==
X-Forwarded-Encrypted: i=1; AKwUvBx4zQsaNKBj3110Sgy0J1UekQdQqXVUvhZDlEk3uUh+agGH0xF4gNx35OyUUq9XwLcnILiN2qd8Dy51EK0DTQ==@lists.infradead.org
X-Gm-Message-State: AFuF++knV9TLD9Q58iXy4aHH0L7XvdMIFlZ4yaAQ0lXxfjiyUQhZiPhb
	Z4e8EN2k3pms9bY64ldfeEPMIellD3i6/+l3ppR8BH078L/WpkCNYigf
X-Gm-Gg: AYBFou2xLfSw0gz8EtC0j9RpbaaR9uWlvzW72ZExL5OKNIGJFutan+4t0EE5D4tP7sR
	A/J0YtAuyapNMaAp0jGgVtu0/6s08tgLpP2CnpkBx/GIi6cIJiTRtOEZeU4NjVAJygSDKRLl807
	RXy90gZ34XxMWyy7ilXUNIa/+IWW+xQyNTT4Dqejb6HvwZYKF1AhaGCaD0mNOTca43E4zdOK+Ij
	DfBs8NKobQ4uvUO0DEXqCTRY5SVFe7CxHCJD647+d5WFcxTUJ/cSnXNdkSTB2/v9hTFtMOZHNyW
	BjE3DsD02UUbnfCjrzI2SVIo/RkPTFiA2ntfPBDyhMIT3RPNRnAuKvkNydp5n59inh2H4Q4abO4
	0I5bkCjVhXbExNSmKU5Hd7d4zxoLL33g9/L0KTkXFvXfw9J0JIHjgY2JKJ3oGkYh5t1unItpJ+b
	1BIKbisahcNbTLG2K/7YmCLAhkFYRh/SICAY+qLBQiBcZZpoIxTO2LSQMM9/PpLXEfs0cENqQbE
	KiJZ/XaOl+w4OXX7VMZ5HGI1Zus5MmSLDOiWT9rZnxo0aPI0l7WDM43FdvbplS59PiUnfIY5fCO
	dA==
X-Received: by 2002:a05:600c:46d1:b0:49d:798:67a4 with SMTP id 5b1f17b1804b1-49e61640f73mr84164245e9.0.1789213064708;
        Sat, 12 Sep 2026 04:37:44 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8209007423DB663D3B2FEC.dsl.pool.telekom.hu. [2001:4c4e:1b82:900:7423:db66:3d3b:2fec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e61a81943sm99068345e9.1.2026.09.12.04.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Sep 2026 04:37:44 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Oded Gabbay <ogabbay@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v12 03/14] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Sat, 12 Sep 2026 13:37:17 +0200
Message-ID: <20260912113717.6819-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260912065053.1519165-4-gahing@gahingwoo.com>
References: <20260912065053.1519165-1-gahing@gahingwoo.com> <20260912065053.1519165-4-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_043747_204909_E16035CF 
X-CRM114-Status: GOOD (  19.59  )
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

Hi Jiaxing,

While re-running the 19 August protocol on v12 as posted today, I
found an error in my own reports that this commit message now
carries. It is mine to correct, and it also corrects yesterday's mail
[1]. What falls from that mail: the 53-versus-49 bound, the sentence
that 19 August showed no manifestation on either arm, and the closing
suggestion that both statements can stand in the commit message. What
stands: the provenance, 45 resets on 19 August on v8 1-2/12 and 102
on 25 August on v9, and the caveat that this protocol bounds and does
not prove.

My script kept the scorer output of every inference per round and
never aggregated it; my summaries scored only the one inference after
the forced autosuspend. Aggregating the per-round files now, the
constant-0x80 result is in the rounds of nearly every run, on every
arm, on all three dates (resets per run, then rounds at 0x80):

  19 Aug  v8 1+2        12 + 8            2 + 1
  19 Aug  base only     12 + 13           2 + 3
  25 Aug  v9 1+2        12 + 11           6 + 1
  25 Aug  base only     8/10/12/8/15      2/0/1/1/2  (+ the one after
                                                     suspend)
  25 Aug  v9 1+2+3      13 + 13           2 + 2
  12 Sep  v12 2+3       10 + 11           2 + 0
  12 Sep  v12 2+3+4     9/5/12/13/14      2/0/2/1/1  (+ the one after
                                                     suspend, twice)

Today's seven runs were two arms only, no unpatched arm, so nothing
today re-tests the differential. Same board and base as before,
PROVE_LOCKING and DEBUG_ATOMIC_SLEEP on, serial console captured on a
second machine for the whole session.

So "no manifestation on either arm, oracle 48/48 throughout" on 19
August and "every inference matched" on 25 August were both wrong
for the in-round inferences, and the 0x80 buffer is not a
differential signal. It is what a job cancelled by the reset looks
like from userspace in this protocol, whatever made the job miss its
deadline, so it cannot tell the races 2/14 and 3/14 close from an
ordinary induced timeout.

The mechanism, from the code: rocket_reset() calls drm_sched_stop(),
which detaches the hardware fence of every pending job that has not
completed; rocket_core_reset() kills the block; drm_sched_start(sched,
0) then completes those jobs through drm_sched_job_done(job,
-ECANCELED). That finished fence is the one on the output BO's
reservation. The only wait the rocket uAPI offers is
DRM_IOCTL_ROCKET_PREP_BO, and rocket_gem.c maps any positive return
of dma_resv_wait_timeout() to 0, error or not, so teflon reads an
output buffer that was never written, which its output conversion
turns into 0x80 (mesa rkt_ml.c, output + 0x80), exactly as you
described for RK3576. With JOB_TIMEOUT_MS=2 the timeout fires on
about half the inferences (74 timeouts over the 147 inferences run
today, seven runs of twenty-one; 14 of the 21 in the traced run
below); whether the reset or the completion wins that race decides
the outcome, on every arm alike.

A direct witness, one run on v12 2+3+4 today with a kprobe on
drm_sched_fence_finished(): exactly two completions in the whole run
carried result -125 (-ECANCELED), and exactly two inferences came
back all-0x80, round 11 and the post-suspend one. The two
cancellations are 5.3062 s apart and the two scorer files 5.3057 s
apart, and across all twenty-one inferences of the run the gap
between a traced completion and the scorer file it produced is
constant to within 2 ms, against a round period of 280 ms, so each
cancellation falls unambiguously in the round that came back at
0x80. In the other runs I have only the scorer output, which took
exactly two values today (all 48 channels within 1 of the CPU
reference, or all-0x80, nothing in between), so there the
identification of the 0x80 results as cancelled jobs is inference,
not observation.

For this commit message I would drop the two paragraphs that cite my
runs as evidence for the race: the one beginning "Igor also ran a
differential on RK3588" and the one beginning "His own bound on it is
the right one", and put this in their place: 45 induced resets on 19
August, 102 on 25 August and 74 today, every reset recovered, no MMU
faults, no lockdep report from rocket or the scheduler in the runs
where lockdep was still armed, and of the 420 inferences scored, 384
matched the CPU reference within 1 on all 48 output channels while 36
returned the all-0x80 buffer of a job the reset had cancelled. Please
keep both Link: lines and add this message as a third, so anyone
following the 19 and 25 August reports lands on the correction too.

Two things I should have said before: all of those resets landed on
core 0 (fdab0000), the other two cores being bound but idle in this
single-client protocol; and two of today's five 2+3+4 runs come from
a boot that had an unrelated lockdep splat in the DP driver at probe
time, before the test, so they carry no PROVE_LOCKING cover. The
Tested-by lines on 2/14, 3/14 and 4/14 stand for that and only that.
On 3/14 please drop "differential base" from my tag comment, which
then reads exactly like the one on 4/14; and on 2/14, where the
comment is only "# RK3588, three cores", please give it the same
comment as 4/14, since the lowered timeout belongs on every tag that
came out of this protocol.

One question this leaves, mostly for Tomeu: there is no out-fence or
status field in the rocket uAPI, and PREP_BO drops the fence error,
so a job cancelled by a reset is indistinguishable from one that ran
(rocket_job_run() reads the error, but only to return NULL instead of
executing the job). Is that intended?

The artifacts of all twenty runs (scorer output per round, runtime
and genpd state, journal, serial log, today's kprobe trace) are
preserved if you or Tomeu want them.

[1] https://lore.kernel.org/all/20260911192833.105634-1-royalnet026@gmail.com/

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
