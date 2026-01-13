Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A34A4D30CDB
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 22:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=99Yhj1xQ1Q4ygNTCtqRbk/8M9aTUzNq24kGwAWiSWk0=; b=baypg+Z9PeLKs6
	tOxijmDExVi2rQSkoChvnAvCvnL3sbd19tTPeIpDdZ12dSegRXNfR1gc40U/qpD0x0CFGNMCV4/DD
	IEBs5HhYHwIsxBmICCGJy3sxmfena8Jfrn5RbAqB/LzDoVumrLNyCHVXdPfrfs5H6oVSWbeUOkZ7b
	+Zw2sOUqL7jGvEMGkizrGzZsk1/RX5CKceFaVaJ3HmJszUtOwMfNSHuzuBmEBPJI/w/xD4l9R4rfL
	GYoA+wEKi5FAc/ZItU41qXcMEBzigpohfAyPwP0DSL2mit07lmM6VoZNMa/htniSx7+7Xb7qDB07/
	QLQMH+u8Q6ZmC1+3NKpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfmTr-00000007nNZ-1q4B;
	Tue, 13 Jan 2026 22:03:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfmTq-00000007nNR-1R9E
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 22:03:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7B0E360017;
	Tue, 13 Jan 2026 22:03:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137A7C116C6;
	Tue, 13 Jan 2026 22:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768341793;
	bh=nief9n323/1os0uIPBw9I+JGlvYKhvBDE8nJXbETvfY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Gginygg81xftxlqNavUsJxeeos3OT3NbnOVpOnuLxuKuvZJMOznHUpxkL7sdWO/bX
	 aT9lo8sZUGPsfUq+/972k7JA5UR983jmNeNOy3N85c0aXvJZTpEe9lP+lRZMKHn4Am
	 vPWe2gEq6Y7sAH98WehqpgAeBdi8GRORFmwBP+pI6XB+hjO0sEZfLXUtTjiQSW8pCm
	 kwGbqgdld2z1/lxzjHzV2t+1RS07CB3I099Aksa5/PPzi9CfIgHRcQl4kYwz1CVpAW
	 kQvZ0KL20onU9joRfc9fvAv/sGpKzb1D852bRmPlWVORm5CXgnd6YGP9omesVv8mBm
	 HsQjW1fzIkLIg==
Date: Tue, 13 Jan 2026 16:03:11 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v3 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition
 trace support
Message-ID: <20260113220311.GA782180@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1768180800-63364-4-git-send-email-shawn.lin@rock-chips.com>
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

On Mon, Jan 12, 2026 at 09:20:00AM +0800, Shawn Lin wrote:
> Rockchip platforms provide a 64x4 bytes debug FIFO to trace the
> LTSSM history. Any LTSSM change will be recorded. It's userful
> for debug purpose, for example link failure, etc.

s/userful/useful/

> +		 * Hardware Mechanism: The ring FIFO employs two tracking counters:
> +		 * - 'last-read-point': maintains the user's last read position
> +		 * - 'last-valid-point': tracks the hardware's last state update
> +		 *
> +		 * Software Handling: When two consecutive LTSSM states are identical,
> +		 * it indicates invalid subsequent data in the FIFO. In this case, we
> +		 * skip the remaining entries. The dual-counter design ensures that on
> +		 * the next state transition, reading can resume from the last user
> +		 * position.

Wrap this to fit in 80 columns like the rest of the file.  Occasional
code lines that don't fit because of indentation or long meaningful
names are tolerable, but reading plain English text that doesn't fit
for no real reason is just annoying.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
