Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0D34C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 09:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0q1TDVhdbLBoKAiJgcOIpBRnm6vlDyqF0xZmUBeYb8=; b=Gf4nnVm8+peiVJ
	HrKHu/S2fIwyvKa/+QdPHTQ6cg0wF/NdXgNAopLEJIpQOcWqD/IWI9XlZ2553Qr7NaQxDC7QF3nvs
	CnPESm+mSVQ9olZ3zN1CsHgxmq7u44Ur80fDtAV1byVVY3+fBclYXxq5KufnEM0eVgaaIyaQf+K0N
	J+3ZCH3kBws9Wjfp5lRFbYlriugUb4c7qvz1cAseb+hPiDLvEh4m9eFqGei4OEpM+Em0WMd6XiarW
	94IetswFdAqiAENq5FErc3Iq2ogfkyMg8fLDpPuB2f1DRfGk7gd7woliss+2QDSvBegUwHCFWoT2j
	7vkzA3xPAkh4cOA6MD6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzbAi-00636S-FI; Tue, 21 Dec 2021 09:11:00 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzbAe-00633o-Jv
 for linux-rockchip@lists.infradead.org; Tue, 21 Dec 2021 09:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1640077840;
 bh=rLiprYYv/03YO8D2fVcHiRIDbo7NAT0ilK/7QutJtZM=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=cyczsnN22jBfrEZ77DibtEDk7NTN4lwzBxW4tkpk1tMKTdvBAmC6fA6kOUb1Z5X1o
 zC6uLccoRfqfVyk+zb+i4FhwErom//ntGU6qGXeeHDXWJ//fWo+xgP465DF5lQVded
 x4dIikaimIM7lmlnUs+LLjYPe7P/EAkvM2GngxPc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([217.61.155.223]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MFbVu-1nGesA1zYM-00H38W; Tue, 21
 Dec 2021 10:10:40 +0100
Date: Tue, 21 Dec 2021 10:10:36 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <YcGU6pQqfEPBqjrO@google.com>
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
 <YcGU6pQqfEPBqjrO@google.com>
MIME-Version: 1.0
Subject: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
To: Lee Jones <lee.jones@linaro.org>
CC: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <4963E4A2-63B4-48A1-BDDD-5F9D07D71598@public-files.de>
X-Provags-ID: V03:K1:7t/9jNOk9g+p2ZLe1h4KOCf1RP8zvbqsrbso5ODfU/MZE7hJbkV
 I7XVm3w62C5rLb5tpzVSzAMpbdDfpdMJ1hZ6tYBCJslyOqvssHeDTBOs/1wcWZvLlYayQyU
 TUlwtfImqpeAYbMWzh9F0CTa5Jj8Hse/nLjEesOVFrGSPKuypY+5s6QMve5P/dwVK7whaOi
 ne3RqRQx8VkgJeB73iGqA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:4e13MBbMUY0=:zqluPHGSICKswJ7zbRvFzq
 NMXJ60heTaSBCjNxzCClCn8B+Pekxmm3D7XlfE3JPYn3LWbAmXKqSs8JtKwm9uuRhTrsE9kU3
 mCUyCwkfmMhQ1uOm55Y6iy5SBnCUcVUTimXb/ujXnGkJoNoQJ7wKIfNWp1Y3/0gyIq2iPxjNh
 KYP7/eLIIB44HgT0MxjbTkbGk1+moDFbEZwO7bFjILhNMjH8UDWk+Gp/HD/C85Kz7ppzZGIyQ
 lGIZqBMxxWXj4tmB7zTB/n2mfjrVMuhbqqnR+Q9McTEHVG/W0VVFQWa421VJ46jNrkY7KP60z
 EDYGrPvIQuS40CiFpgRw1Gm1wBffNvWHx1gkbmLZLKNVQqWvna8FPAUHEqFLdzM4ScdAeoMD+
 Ulju+mIGmWlm+XUfCVn37e9VyhDFxzLgW8dKFELdNxG5i0FHVA711KRGteqzVfnlfl1lLbqmN
 9jAg1+bM/FKdFipTserXlt5/2Tv3YYV67Yr6ESc/N9UgB9ZMpxSMCmlyooOyvfoPmknAlZE/T
 8tj2RD0BbK7UoNfoWncCKcEjB5SxiXYlPeGHCICfgN7WUQCBBfp4l6tnGhJhuSob8wi2E4CPV
 NwQOSG9cx8Tb3wcW7Me+wud9n63oAilPuAjTEWoyc/qwuyXi4MIpYdYMH9gdoGqFmHE7Yme5H
 3AX/WLYdTEg9InN2GoXeZmfWa28RIEwd7+cujXsiH7q918MqrB6LNN4LXD9dyDfENoVquwEff
 SUcAIbjqDp+rebaUWbml0riMzX1BmPiqpuCpcEysWYAvSvSQx7a7JkKvc0mfs1xpwnv9kqHcP
 fBDuK2XtzWV99cVc+5C6kBVq28baegU/PBcWVC/EXkcLg9yZG51evcekFPI0RE11meyJ03Ml0
 dP8jsaeI4qQ5OaTXbgNTqf4JLo2LRwy3J9HWbNMlrSKppK2IAC/oqv8Dl5gJh7NPuW09YtDpe
 K+Pttg8yKzEft2Hde/WBLiWm6P/yx/bOMFBYffLl/FeCZCsLblxnwmzDHsRappsrtCnG4Hi9x
 cQupMWy/6qMgo9x0D9QsxAHhMWzlLPEdtHBCdJVOQf+HEKmj7YH/SLO34K08X3mvTI+jsDSI9
 FMhuoSm0JMXpn8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_011057_034205_C4380FA1 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 21. Dezember 2021 09:48:43 MEZ schrieb Lee Jones <lee.jones@linaro.org>:
>On Mon, 20 Dec 2021, Frank Wunderlich wrote:
>
>> Hi
>> 
>> > Gesendet: Montag, 20. Dezember 2021 um 15:46 Uhr
>> > Von: "Peter Geis" <pgwipeout@gmail.com>
>> > @@ -749,6 +791,9 @@ static int rk808_remove(struct i2c_client
>*client)
>> >  	if (pm_power_off == rk808_pm_power_off)
>> >  		pm_power_off = NULL;
>> >
>> > +	if (of_property_read_bool(np,
>"rockchip,system-power-controller"))
>> > +		unregister_restart_handler(&rk808_restart_handler);
>> > +
>> >  	return 0;
>> >  }
>> 
>> this change misses a declaration
>> 
>> struct device_node *np = client->dev.of_node;
>
>How did this compile when you tested it?

Here i have squashed the change in:

https://github.com/frank-w/BPI-R2-4.14/commit/06430ffcb6d58d33014fb940256de77807ed620f

With the change i can compile it...

But in v4 (patch is tagged as v3 too) the of_property_read_bool was dropped completely.
regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
