Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA398C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Apr 2023 14:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cvqb2E/MxnS+PbzEyhK0+so+7vqKBiRsJISnaGHMgw=; b=XnroTthWMi5c1o
	ahHcR/ESorp2uH78NfgqiEQ1g2YPRbyotnpDNMLOHwmUMMZlZ7vRPRFcZUvwyr5A0v2nD3yHJW876
	/D0K4JtBQZXnASR6X5u3c1JtFOJ5Rknmz3Oj1/Z8XNYwyONUsNBOGs+lCeCxO1QDSnxUVxvKcsfSw
	OHlV+xumid/wcQvmqBDoYEuBhBlx8QaDDHI0ky71Amd+ganr+3tkZ7eS6aYboYGcoTQB0sk5r9OwL
	/JmAf6GHYJ8WGJH4YQvqi4HIZzVsTptQttTfn4fWEJjOTro4TI+dCky+HzWZYvweXg+qq1cozPDTb
	s8Tghk0ezMb8rBSIAqDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1picIX-00Ah7U-1C;
	Sat, 01 Apr 2023 14:33:41 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1picIV-00Ah6K-1z;
	Sat, 01 Apr 2023 14:33:40 +0000
Received: by mail-pl1-x632.google.com with SMTP id u10so24062012plz.7;
        Sat, 01 Apr 2023 07:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680359616;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XVMCxKkdAj5G/sHqBJwRjfivjb3c00JzonL5QvYBrDc=;
        b=oorS77R7MIzVP0hceo91ptJHWN9iXoA1WQeFlSuZGUdTpqzzj+6KEWHDb9EvFJioJB
         s7Yk/litLZVKfdHl2yWdlE2pKQ3qC3Aw3v7reTboKin+yD1gkIBCODUAYsLsZ6kMdDM+
         d7E/3CR/y4+dI3crXmJE/IC5fqv8XTyyK51Qn2x28S/dfqrqty9m6QyLUPLeOjvQSabB
         o71Lrwk67YDTb17v79gPk94omHSRIKPnRsXaQBmPEZxvNRa5W0R0NBTCs+SEx1tqU4Q5
         dSgxXViMUO5Tj6yXlV2tnPu1nCSNXT7TQOQYK0Y2WWhZkna0tkn7H+MzFuTHhWu0fti1
         q0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680359616;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XVMCxKkdAj5G/sHqBJwRjfivjb3c00JzonL5QvYBrDc=;
        b=0tqbZWi088bikO1GRICgAX0avrq0HnEpGwWhh/vVXR8HwUWzp/7Gt6C1kzw0sV2VZ5
         JABoXJS7Sd3OjAHwHEj0GJ51rPol1mcrXNZJ5w3Jxb7jdyyrPbgTNzrp6QI+2Iep92SF
         cevjVdfAzqtlfpXVah8wLgKVbLL90aoQtiIVsVoTrGYJoREWtST2Z1pY2djp6IuPeGeQ
         AjH2JauKjV6lFZk/Wm5jXI8uwLdjw9n55QUo+GjckzgaCJO1+VRXcmJwfM9Bb1DrDpg/
         X5kswE8aPENsirBoQ9YQW5hcEHub6iWZNaNv/EDPUkOT+utedzfA4ougYY9ewsbo3OrJ
         glHw==
X-Gm-Message-State: AAQBX9en5dAKA1rGMMWBMCKE5OvI8FuZx9QproG6fw3hEolwSqCXQcxn
	MVgC8hdDJ5C94TYS/HRMuMXLqu7wYLHhAnPzVKE=
X-Google-Smtp-Source: AKy350bWY76S1g8Vj/Huvn7WWZ45nm5q5e7cFRBykceGGzehIhVjpEW9LM82jjc/w8x69HUL9jxGeorEgerr+yx+Blo=
X-Received: by 2002:a17:902:d70b:b0:1a2:8940:6da8 with SMTP id
 w11-20020a170902d70b00b001a289406da8mr3191541ply.13.1680359616143; Sat, 01
 Apr 2023 07:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230331163058.5688-1-sebastian.reichel@collabora.com>
In-Reply-To: <20230331163058.5688-1-sebastian.reichel@collabora.com>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Sat, 1 Apr 2023 16:30:53 +0200
Message-ID: <CAEwRq=q=W57W33nYe_uUDQb0cf7QkFoa0rO+EWdsuUGTN7k_Vg@mail.gmail.com>
Subject: Re: [PATCHv1 0/2] Improve RK3588 clocks and power domains support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Peter Geis <pgwipeout@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Boris Brezillon <boris.brezillon@collabora.com>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230401_073339_674790_7AFAB17F 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
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

Hello,

I'm running a QuartzPro64 with this patch set applied, everything(*)
works properly.

(*) eMMC, SD, LED, ethernet, serial, watchdog.

Are there any tests I can do to help with this ?

Regards

-- 
Vincent Legoll

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
