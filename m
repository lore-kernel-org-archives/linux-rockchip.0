Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FB3FD2D0FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmFUQHl+AJZIUbcAQhAaFqlVNPouslXrQhomb3LTwyY=; b=QAVIT++nQmrpz5
	YApXRi9xF8+UGNc59/DOOdS3pc8+O/DaakAMQ0VT4EuJD+dQfS6QRMqSuThwEeDbx1akIG36xR715
	hiU8f4Sv/9/+fQ1vDSH+VJShPq5e4LW2i4jj6NwYPjST20vlkl3l6+CDeOuQxpxGEMioEHNuvKXx+
	hgB/nnZ/N0QQdkZp211si002cD6zhP52Pa1CSkBSlnjmrks+rDLzxu4u94s04ocj/rgtb1OurnDhC
	Z7vdlp0UO3rbHh4VVJHS8SktgyMjBnqIFu3mtdy6h8+GxFRrbUBG2tllbQ9bta6HoglwWgNR/xCKd
	/Xwh0TBiR7VOgDREMCww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeYd-00000007AEJ-18Ux;
	Tue, 13 Jan 2026 13:35:39 +0000
Received: from out-181.mta0.migadu.com ([2001:41d0:1004:224b::b5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeYZ-00000007ADg-0udy
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 13:35:37 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1768311325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CNg4cyT1A0ryDNTVCyPuutdiB+nl1aw6BVDcivrghy0=;
	b=GM2dxYRgIHXk5rZMhppWsCyjt8xs9WYbjKprfP4glFV4bFYvUA1t/l2gn7RXXWJ6sQNdxE
	gXf3zXWVi2SQfCzL8Gm9CohcNZ878PPsd5j767Xzp7CbhmzcXTq+lJwOskc1TTo1bLTSw3
	Ec5/Hm/YnCJ4/t1lxo+DYAkADgs0dNLfKgqV1V7ZsbnB8YHb5YBpr1oIrx8Xy4bQOTSKuu
	5apfcyVYwKhvAOSSJQ8ee0zqIo2yGOg9RRm1Xk6wfB8F+INOhyGG1JKnZPPYA11m7hLKU5
	naJUdgDXB3YbX+w7kxx+J+ZhPd8FO3f7huV2AjL0uhH+rORrFsHju8ZEDkTuXA==
Date: Tue, 13 Jan 2026 14:35:21 +0100
Message-Id: <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: "USB mailing list" <linux-usb@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
In-Reply-To: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_053536_387016_CB42D505 
X-CRM114-Status: GOOD (  16.15  )
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

On Sat Jan 3, 2026 at 5:52 PM CET, Alan Stern wrote:
> On Sat, Jan 03, 2026 at 12:00:13PM +0100, Diederik de Haas wrote:
>> On Wed Dec 31, 2025 at 7:09 PM CET, Alan Stern wrote:
>> > I can't say anything specific about your systems without a lot more 
>> > information.  However, I suspect that any problems you are running into 
>> > are not related to that warning.
>> 
>> What kind of information do you need?
>
> We can start with the output from "lsusb -t" as well as the dmesg log 
> from a boot in which something (a USB-2 port, for example) didn't work.  
> If the log shows something going wrong when you plugged in a device 
> after boot, explain what you did, what happened, and what was wrong.
>
> For now, concentrate on just a single system.

I was almost ready to declare 'issue fixed' when I actually did notice
the issue on a Quartz64-B (RK3566). For 'reasons', that may not be the
best test subject. Then I was preparing to test some media patches and
prepared my Quartz64-A (also RK3566), which is usually online 24/7.

Plugged in my keyboard adapter in the top USB2 port and that worked.
Installed some packages to make the graphical environment match that of
my other test devices and rebooted.
Got my (gtkgreet) login screen and plugged in my keyboard adapter in the
*bottom* USB2 port ... and that did NOT work.

Logged in via SSH and noticed it was indeed not listed in ``lsusb``.
Checked ``lsmod`` and ``dmesg | tail`` ... and noticed the kernel *did*
notice plugging in the keyboard adapter, so did ``lsusb`` *again* and
then it *did* list my keyboard adapter.
I did NOT employ my usual 'workaround' by plugging it into a USB3 port.

So it may be that it would have always worked ... eventually ... if I
had just waited long enough?
While 'dmesg' seems to suggest it took little over 0.5 seconds, I'm
really not that fast ;-P (or that impatient)

Full log:
https://paste.sr.ht/~diederik/34847f5c6873f1fc8d32eeb79f2bf2ff9dd4570c

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
