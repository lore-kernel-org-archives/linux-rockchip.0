Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 001BCC624DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 15:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jA08ZPfsVD0NDZ+U8/iMUSlxrNH2olUIWPRgiOa9xgA=; b=3X6Crg0C6k3Nil
	RoQ7JgT0hF/TZY3LYHJPjvPr/Da4GKfT4+RD3DljRf54ZNA7yJxb4/JDAdel/xKhAgVPKyY8tGP8z
	+4FNyKacRj9n1m/ReN+/L9ZVktcz/VtghaXleAQo7/5cm3DDTtHWwy86qDHHCYWxoobudZMW6rAYM
	CrWy+HrxAUaY/7NN8QtLswzoy7Ml6h0EkBYIhNyvmmpL6YA916syn9Y8cQIJvWFLMHYQfjqwzfTCW
	am96GFDqo0EXQV15yb5gy4UkAca00AEqW1sK92y30AVcv4q7ETPevNSRC/+tOq/ExFVREV2baD2zW
	XNT1x0WznjXnqczbxDXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2s5r-00000004BGK-278t;
	Sat, 05 Sep 2026 15:14:11 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2s5p-00000004BFy-060l
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Sep 2026 15:14:10 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843af75de5so105623f8f.3
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 08:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788621247; x=1789226047; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0NOVY4ecrwmijTIwofsEVU1GqxsGoGl/mrGh4bEdkTc=;
        b=nKyGADhTZ/4K0tAfW2t/5uLmXGxs0A+Hz0wXfDUFBlPq5Jvf8F6Cp+d+hgBnlG9/s9
         ABibCZu5GUSAV/8sR4MkQdKNZlZoRUX/hzNWxFDtndEuoBZRoVCPwsn4PPhv7EpdHId9
         blfJThGRfeIbfxDv4BbFkX3uMkNKs6UrkS9U69f6kpUE8DEbyUNNjhwoHprMjwNUKNVM
         Cx/elgdxlbGseGaGr9ChM4LkVsEwrFYUkpMcNbQOA0jdkWGyqKWj64mDMC/fJhPgVVHx
         1pCDDto1T9RWpIj8+LtpdKbowDpX6xLQGDiV7YG8XCMvgezuHXszqG3IP7kRTzHhbn/U
         Hk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788621247; x=1789226047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0NOVY4ecrwmijTIwofsEVU1GqxsGoGl/mrGh4bEdkTc=;
        b=LjCzd1oQ4t/kWA2ZNBD45Qfc4GluLvd+QN0hVflHB+8rM2zzzYaMJ4Xicbd9qX6C+Q
         CALNcVDYCySuA3EWec70OhDulRYPkty0tH6V54nsyei1xsUby97k9HvoT6fvUJt7tKGs
         4SvASAB6XAT7h4LIpNtKkxMbb+0CaRqIjRAnoCcHB6fNf896MbhmdtXhbG3IyD7pcii0
         eQuHs2zYtDBZdyY/biTWXWnU6fz1EQgASIQ/UtrpTxY0qmPw6qj58uBlQIwG1RxAr/gd
         JJEaP4iRruPChacK66gJ9Zk7BdPh5hjVQJdipV6Uw7X8Q18lRTzlrxWsRL4HF1Qo/e8i
         aD2A==
X-Forwarded-Encrypted: i=1; AKwUvBwKUuPn76wMK5344vuzOI07P4EIhNtEC2onqnNxjRsTcUhqS/X5xliJlsoK/DcIUZ9EsbMBrjZpTFBA8hNL0Q==@lists.infradead.org
X-Gm-Message-State: AFuF++leuImAsxb4b7VL6Oc4VzJBmrY3VxDtJajDl/Ye1DVMe1IPJDw2
	PEkGj42OOWO0WttlFyLOKGQ+ZRgVCJonIiHQwhIOBqwfeQITgk+XPP89
X-Gm-Gg: AYBFou0m6WKzHaL4bN4qBaxescG89Dh0zY08+UOJtKSix7yj7HTWatNxKQuQLDEzuAa
	nr1M4eh4IK95DpGJDZhQxd1SLbofsRAQC9c2lYW2NCOjhhPdJAGFPlebicMZ0oC8bc6DuJTDLcL
	H9ExognI+WcYRjlrYYHKEVgbyuaVbDfvRk8MJBW2nK6y8Xn7cjby0gJDlBt+loxqrR+g+oKPsxu
	CS1NL/FJJVffBPoCIJnmeJ7lGXDC0ME4+Y3SDj3/qFpGWcOi0R+dtuUXQRyrKrPwh6Z8XWMIilN
	G/JXgNEJPvSzZd9DpQlQp6URnIM3Yeo20bbvYvP9vA/GzccfAeXERjrHt73pQixebHSQGJQkZ3s
	auvSNvAHRZYFJxG+2H28UtmUUeyQZZAkKoqL1Ck5QgfBsc0cSH1FFWoOK7ZbPc+sVJm7qc6zcEf
	BUrtWoGx9vDozd3qhqvH/sEX8AlwFym+FooeBWlra1o8In0vxmlUa1Okzt9Y2F/pkxZzH2BTCF0
	jIqKo28J+2e01iv8L4vdBEmLTe+rYgoSMfrPm09+07feZk8dgmbeteyuy7m+Z697A==
X-Received: by 2002:a05:600c:a012:b0:49c:eac2:ddad with SMTP id 5b1f17b1804b1-49d01dc0137mr47179335e9.1.1788621247204;
        Sat, 05 Sep 2026 08:14:07 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B950E0061C002CD703C2CBB.dsl.pool.telekom.hu. [2001:4c4e:1b95:e00:61c0:2cd:703c:2cbb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d08144037sm30395975e9.7.2026.09.05.08.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:14:06 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	tomeu@tomeuvizoso.net,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] accel/rocket: search every core slot when a core is removed
Date: Sat,  5 Sep 2026 17:13:53 +0200
Message-ID: <20260905151358.8997-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260905090134.239404-1-gahing@gahingwoo.com>
References: <20260904125936.26234-1-royalnet026@gmail.com> <20260905090134.239404-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_081409_110590_FA21B940 
X-CRM114-Status: GOOD (  21.53  )
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

> Moved here from the DVFS thread so that b4 can collect it.
>
> Tested-by: Jiaxing Hu <gahing@gahingwoo.com> # RK3576, two cores

Thank you, and it works: b4 picks it up with the comment attached and
the DKIM check passes. Two cores on a different SoC is worth more to
this patch than anything I can produce on my own board.

Your test also found the edge of something else, and I would rather
tell you before you spend more rounds on it.

You wrote that the cores came back "numbered 0 and 1 both times". That
is the case that works. I rebound the three cores here in all six
orders and only the devicetree order ran clean:

  bind order (slot 0 first)   NPU job timed out         inference
  fdab fdac fdad (devicetree) none                      129.4 inf/s, oracle ok
  fdab fdad fdac              27 fdad                   1.95 inf/s, oracle ok
  fdac fdab fdad              135 fdac, 5 fdab, 1 fdad  oracle rejected output
  fdac fdad fdab              135 fdac, 5 fdad          oracle rejected output
  fdad fdab fdac              136 fdad, 5 fdab          oracle rejected output
  fdad fdac fdab              135 fdad, 1 fdab          oracle rejected output

Counted from the journal since each bind, one six-second inference per
row. The single fdad timeout in row three is on a correctly numbered
core and I cannot account for it; the most likely explanation is a job
still draining from the previous row, since the count starts before the
unbind. Everything else lands on a core whose slot is not its hardware
number, in proportion to the tasks the scheduler gave it, and in both
directions of the mismatch: 5 timeouts on the core in slot 1 whether its
hardware number is above it (row four) or below it (row five).

The cause is in rocket_job_hw_submit():

  extra_bit = 0x10000000 * core->index;

core->index is the slot the core takes in rdev->cores[], which is bind
order. The vendor driver computes that same bit from the hardware
number of the core (rknpu_job.c: REG_WRITE((0xe + 0x10000000 * i), ...)
with i indexing rknpu_dev->base[]). On a normal boot the two agree and
nothing shows. Bind out of that order and every task submitted to a
core whose slot is not its hardware number times out after 500 ms, the
reset does not help, and the inference finishes with wrong output. No
error, no warning, no regulator or clock message - the rail sat at
700000 uV in the runs that passed and in the runs that failed. Only the
bit-exact oracle and the UART log showed it.

The second row is the one I would have missed. The oracle passed there,
because the tensors it checks are computed by the core in slot 0, which
happened to be correct. Throughput was 66 times lower and 27 jobs had
timed out. A single assertion does not catch this.

Two cores make it cheaper to test than three. If you bind the second
core before the first on your ROCK 4D, on your current kernel, I expect
the jobs that land on slot 0 to time out and your nine models to stop
decoding identically. If they do, that is the bug reproduced on a second
SoC by someone who is not me, which is worth more than my six rows.
If they do not, I have the cause wrong and I would like to know that -
please say so on the patch thread rather than here, so it lands where
b4 will pick it up.

The fix is on the list now:

  https://lore.kernel.org/dri-devel/20260905135612.7324-1-royalnet026@gmail.com/

It numbers the cores by their position among the core nodes in the
devicetree. It resolves that through dev->driver->of_match_table
rather than a compatible string, so it works both before and after your
12/14, which moves that enumeration to for_each_matching_node() and
renames the table. All six orders pass afterwards, 124 to 136 inf/s,
zero timeouts. It is a separate patch with Fixes: and Cc: stable, and
it goes out before v2 of the DVFS series.

One more thing your report is useful for: it is the same class as what
you found on RK3576 last week. Wrong result, no complaint from the
hardware. I am starting to think this driver needs a bit-exact check in
whatever test people run against it, because throughput alone will
happily report a healthy number while the output is garbage.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
